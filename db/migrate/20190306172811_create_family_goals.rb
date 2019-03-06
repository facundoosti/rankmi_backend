class CreateFamilyGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :family_goals do |t|
      t.string :familia
      t.string :cargo
      t.string :mundo
      t.string :area
    end
  end
end
