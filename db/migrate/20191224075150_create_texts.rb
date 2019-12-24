class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.text :title
      t.text :content
      t.text :image
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end