class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.date :publication_date
      t.string :description
      t.integer :calories_per_serving
      t.references :category, null: false, foreign_key: true
      t.string :review
      t.text :instruction

      t.timestamps
    end
  end
end
