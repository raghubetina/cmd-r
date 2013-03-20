class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :url
      t.string :selector
      t.integer :user_id

      t.timestamps
    end
  end
end
