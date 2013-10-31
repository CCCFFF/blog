json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :testimonial
  json.url testimonial_url(testimonial, format: :json)
end
