class AddSsnNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :ssn_number, :string
    add_column :users, :ssn_card, :string
  end
end
