class ContactMailer < ActionMailer::Base
  default from: AppConfig[:from_email], bcc: "admin@singma.com.au"

  include ActionView::Helpers::NumberHelper

  def confirm_email(contact)
    @contact = contact
    @budget = number_with_precision(contact.budget, :delimiter => ",", :precision => 2)

    mail :to => "#{contact.name} <#{contact.email}>", :subject => "Contact Us [Singma Bathroom Renovations]"
  end
end