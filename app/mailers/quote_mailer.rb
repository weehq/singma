class QuoteMailer < ActionMailer::Base
  default from: AppConfig[:from_email], bcc: "hornsbybathroom@gmail.com"

  include ActionView::Helpers::NumberHelper

  def quote_email(quote)
    @quote = quote
    @ground_floor = yes_no(@quote.ground_floor)
    @full_renovation = yes_no(@quote.full_renovation)
    @final_quote = number_with_precision(quote.final_quote, :delimiter => ",", :precision => 2)

    mail :to => "#{quote.name} <#{quote.email}>", :subject => "Your Quote [Singma Bathroom Renovations]"
  end

private

  def yes_no(answer)
    answer.eql?('Y') ? 'Yes' : 'No'
  end
end