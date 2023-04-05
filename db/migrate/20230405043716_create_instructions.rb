class CreateInstructions < ActiveRecord::Migration[7.0]
  def change
    create_table :instructions do |t|
      t.string :prep_time
      t.string :cook_time
      t.text :ingredient
      t.text :description

      t.timestamps
    end
  end
end
