class AddColumnToQuote < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :guestCount, :integer
    add_column :quotes, :budget, :integer
    add_column :quotes, :comments, :string
  end
end
