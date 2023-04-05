class CreateEndUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :end_users do |t|
      t.string :username
      t.date :date_of_birth
      t.string :email

      t.timestamps
    end
  end
end
