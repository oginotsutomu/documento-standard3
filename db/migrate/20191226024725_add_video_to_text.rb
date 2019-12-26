class AddVideoToText < ActiveRecord::Migration[5.2]
  def change
    add_column :texts, :video, :string
  end
end
