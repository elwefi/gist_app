class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :description
      t.boolean :is_public
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
