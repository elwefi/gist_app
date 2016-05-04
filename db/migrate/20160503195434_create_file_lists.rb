class CreateFileLists < ActiveRecord::Migration
  def change
    create_table :file_lists do |t|
      t.string :name
      t.text :content
      t.references :gist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
