class CreateMaestros < ActiveRecord::Migration
  def change
    create_table :maestros do |t|
      t.string :artist, null: false
      t.string :album, null: false
      t.string :genre
      t.boolean :favorite

      t.timestamps null: false
    end
  end
end
