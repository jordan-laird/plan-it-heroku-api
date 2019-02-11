class CreateVendorPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :vendor_pictures do |t|
      t.belongs_to :vendor
      t.string :img_url

      t.timestamps
    end
  end
end
