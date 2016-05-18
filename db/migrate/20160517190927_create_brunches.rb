class CreateBrunches < ActiveRecord::Migration
  def change
    create_table :brunches do |t|
      t.string :name
      t.time :opening_time
      t.time :closing_time
      t.boolean :vegetarian_options_available
      t.string :address

      t.timestamps null: false
    end
  end
end
