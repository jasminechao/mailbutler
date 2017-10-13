class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :position
      t.string :company
      t.string :cloundinary_img_url

      t.timestamps
    end
  end
end
