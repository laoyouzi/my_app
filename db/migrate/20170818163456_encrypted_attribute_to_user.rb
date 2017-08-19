class EncryptedAttributeToUser < ActiveRecord::Migration
  def change
    add_column :users, :entrypted_ssn_number, :string
    add_column :users, :entrypted_ssn_number_iv, :string
    add_column :users, :entrypted_ssn_card, :string
    add_column :users, :entrypted_ssn_card_iv, :string
  end
end
