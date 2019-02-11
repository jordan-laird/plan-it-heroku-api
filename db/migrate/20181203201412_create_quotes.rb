class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.belongs_to :customer
      t.belongs_to :vendor
      t.string :event_date
      t.timestamps
    end
  end
end
