class RenameAttribute < ActiveRecord::Migration
  def change
    rename_column :users, :entrypted_ssn_number, :encrypted_ssn_number
    rename_column :users, :entrypted_ssn_number_iv, :encrypted_ssn_number_iv
    rename_column :users, :entrypted_ssn_card, :encrypted_ssn_card
    rename_column :users, :entrypted_ssn_card_iv, :encrypted_ssn_card_iv
  end
end
