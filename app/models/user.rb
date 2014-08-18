class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :confirmable
  
  validates :email, confirmation: true
  
  validates_presence_of :email
  mount_uploader :image, ImageUploader
  has_many :authorizations
  has_one :profile
  has_many :user_privacies

  def self.new_with_session(params,session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"],without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end
  
  
  def inactive_user?
    self.verification_status == "Unverified"
  end

  def self.from_omniauth(auth, current_user)
    authorization = Authorization.where(:provider => auth.provider, :uid => auth.uid.to_s, :token => auth.credentials.token, :secret => auth.credentials.secret).first_or_initialize
    if authorization.user.blank?
      user = current_user.nil? ? User.where('email = ?', auth["info"]["email"]).first : current_user
      if user.blank?
        user = User.new
        user.password = Devise.friendly_token[0,10]
        user.name = auth.info.name
        user.email = auth.info.email
        user.confirmation_token = nil
        user.confirmed_at = Time.now
        auth.provider == "twitter" ?  user.save(:validate => false) :  user.save
        #UserMailer.welcome_email()
      end
      authorization.username = auth.info.nickname
      authorization.user_id = user.id
      authorization.save
    end
    authorization.user.create_profile(authorization) if authorization.user.profile.blank?
    authorization.user

  end    
  def create_profile(authorization)
    client = get_linked_client
    str = ""
    client.authorize_from_access(authorization.token, authorization.secret)
    response = client.profile(:fields=>["first_name","last_name","headline","positions","educations","phone-numbers","email-address","location","picture-url","summary","skills"])
    
    if response["phone-numbers"]["all"].present?
      phone = response["phone-numbers"].blank? ? "" : response["phone-numbers"]["all"].first["phone_number"]
    end
      
    if response["skills"].present?
      response["skills"]["all"].each do |skill|
        str+=skill["skill"]["name"]+","
      end
    end
    
    

    pic_response = client.picture_urls(:id=>authorization.uid)
      
    profile = Profile.create(:user_id=>self.id,:name=>self.name,:picture_url=> pic_response["all"].present? ? pic_response["all"].first : "",:small_picture_url=>response["picture_url"],:location=>response["location"]["name"],:phone=>phone,:email=>response["email-address"],:summary=>response["summary"],:skills=>str)
      

    if response["educations"]["all"].present?
      response["educations"]["all"].reverse.each do |education|
        education = profile.educations.new(:college=>education["school_name"], :degree=>education["degree"],:field=>education["field_of_study"],:graduation_year=>education["end_date"]["year"])
        education.save
      end
    end

    response["positions"]["all"].reverse.each do |emp|
        
      if emp["end_date"].present?
        end_date = !emp["end_date"].blank? ? "01/"+emp["end_date"]["month"].to_s+"/"+emp["end_date"]["year"].to_s : ""
      end
      if emp["start_date"].present?
        start_date = "01/"+emp["start_date"]["month"].to_s+"/"+emp["start_date"]["year"].to_s
      end
      employment = profile.employments.new(:company=>emp["company"]["name"],:position=>emp["title"], :description=>emp["summary"],:startdate=>start_date,
        :enddate=>end_date,:is_present=>emp["is_current"])
      employment.save
    end

  end

  def get_linked_client
    client = LinkedIn::Client.new('759vgt28h7sdk4', '1777ATgXopRbrVZe')
  end
  
  
  #  after_create :update_user
  #  def update_user
  #    Mailer.update_status(self.email,self.id).deliver
  #  end
  
end