class AddContentToMarks < ActiveRecord::Migration
  def change
    add_column :marks, :content, :text
  end
end
