class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :cargo
      t.string :mundo
      t.string :area
      t.references :family_goal, foreign_key: true
    end
  end
end
