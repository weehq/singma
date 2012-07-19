module TestimonialsHelper
  def recent_testimonial
    testimonial = Testimonial.where("active = 'Y'")
    [testimonial.first(:offset => rand(Testimonial.count))] if testimonial.present?
  end
end