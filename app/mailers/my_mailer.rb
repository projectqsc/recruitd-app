class MyMailer < Devise::Mailer
  default from: "no-reply@recruitd.com"
  helper :application
  include Devise::Controllers::UrlHelpers
  
  
  def confirmation_instructions(record, token, opts={})
    opts[:from] = 'no-reply@recruitd.com'
    opts[:subject] = "Recruitd - Registration Confirmation"
    super
  end
end
