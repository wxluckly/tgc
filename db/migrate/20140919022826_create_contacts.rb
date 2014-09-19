class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string  :name
      t.string  :email
      t.string  :title
      t.text    :content
      t.boolean :is_send
      t.timestamps
    end
  end
end
