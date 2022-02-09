class CreateJoinTableEntriesUsers < ActiveRecord::Migration[7.0]
  def change
    create_join_table :entries, :users do |t|
      # t.index [:entry_id, :user_id]
      # t.index [:user_id, :entry_id]
    end
  end
end
