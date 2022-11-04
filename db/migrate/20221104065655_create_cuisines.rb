class CreateCuisines < ActiveRecord::Migration[7.0]
  def change
    create_table :cuisines do |t|
      # t.references :name, null: false, foreign_key: true

      t.timestamps
    end
  end
end
