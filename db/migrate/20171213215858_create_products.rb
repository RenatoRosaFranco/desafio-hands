class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :logo
      t.string :name
      t.string :description
      t.string :slug
      t.string :tags
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
