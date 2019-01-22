class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :text
      t.belongs_to :user
      t.belongs_to :chat_room
      t.timestamps
    end
  end
end
