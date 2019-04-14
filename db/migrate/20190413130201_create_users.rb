class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :message
      t.boolean :status

      t.timestamps
    end
  end
end
