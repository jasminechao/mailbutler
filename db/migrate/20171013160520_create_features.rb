class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.string :header
      t.string :subhead
      t.string :description
      t.string :video_link
      t.string :cloundinary_img_url

      t.timestamps
    end
  end
end
