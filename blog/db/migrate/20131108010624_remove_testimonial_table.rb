class RemoveTestimonialTable < ActiveRecord::Migration
  def change
    drop_table :testimonials
  end
end
