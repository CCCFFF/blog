class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :testimonial

      t.timestamps
    end
  end
end
