class CreateLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :item
      t.text :content
      t.timestamps
    end
  end
end
