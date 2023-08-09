class AddUserIdToInstruments < ActiveRecord::Migration[7.0]
  def change
    add_column :instruments, :user_id, :integer
  end
end
