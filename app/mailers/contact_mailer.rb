class ContactMailer < ActionMailer::Base
  default from: AppConfig[:from_email], bcc: "hornsbybathroom@gmail.com"

  def confirm_email(contact)
    @contact = contact
    @url = "http://hornsbybathroom.heroku.com/"
    mail(:to => "#{@contact.name} <#{@contact.email}>",
      :subject => "Contact Hornsby Bathroom")
  end
end