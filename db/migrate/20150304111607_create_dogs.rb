class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
