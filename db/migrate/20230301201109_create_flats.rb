class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :address
      t.string :photo
      t.decimal :price
      t.boolean :avaliable

      t.timestamps
    end
  end
end
