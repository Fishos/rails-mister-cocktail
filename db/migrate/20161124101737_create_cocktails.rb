class CreateCocktails < ActiveRecord::Migration[5.0]
  def change
    create_table :cocktails do |t|
      t.string :name, uniqueness: true, presence: true

      t.timestamps
    end
  end
end
