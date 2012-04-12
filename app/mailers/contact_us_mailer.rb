class ContactUsMailer < ActionMailer::Base
  default from: AppConfig[:from_email], bcc: "hornsbybathroom@gmail.com"

  def confirm_email(contact_us)
    @contact_us = contact_us
    @url = "http://hornsbybathroom.heroku.com/"
    mail(:to => "#{@contact_us.name} <#{@contact_us.email}>",
      :subject => "Contact Hornsby Bathroom")
  end
end