class CreateCabins < ActiveRecord::Migration[6.0]
  def change
    create_table :cabins do |t|
      t.string :name
      t.string :country
      t.string :address
      t.string :image
      t.string :slug
      t.string :region
      t.string :location
      t.string :references
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
