class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :family_name
      t.string :name
      t.string :email
      t.date :birth_date
      t.text :bio

      t.timestamps null: false
    end
  end
end
