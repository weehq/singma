module TestimonialsHelper
  def recent_testimonial
    [Testimonial.first(:offset => rand(Testimonial.count))]
  end
end