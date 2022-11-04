class CreateFoodPreps < ActiveRecord::Migration[7.0]
  def change
    create_table :food_preps do |t|
      t.string :name
      # t.references :name, null: false, foreign_key: true

      t.timestamps
    end
  end
end
