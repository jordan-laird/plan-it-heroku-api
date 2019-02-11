class AddColumnToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :status, :string, :default => "pending"
    add_column :quotes, :response, :string
  end
end
