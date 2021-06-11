class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :language_id,  null: false
      t.string :title,      null: false
      t.text :content
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
