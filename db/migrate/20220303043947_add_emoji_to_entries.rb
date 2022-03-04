class AddEmojiToEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :emoji, :string
  end
end
