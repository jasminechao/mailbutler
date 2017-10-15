class ChangeTestimonialsCloudinaryColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :testimonials, :cloundinary_img_url, :cloundinary_img_id
  end
end
