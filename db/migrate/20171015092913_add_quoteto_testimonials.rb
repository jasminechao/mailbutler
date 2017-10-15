class AddQuotetoTestimonials < ActiveRecord::Migration[5.1]
  def change
    add_column :testimonials, :quote, :text
  end
end
