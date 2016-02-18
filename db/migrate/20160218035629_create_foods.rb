class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.decimal :red_meat
      t.decimal :poultry
      t.decimal :seafood
      t.decimal :vegetables
      t.decimal :milk
      t.decimal :other_drinks

      t.timestamps null: false
    end
  end
end
