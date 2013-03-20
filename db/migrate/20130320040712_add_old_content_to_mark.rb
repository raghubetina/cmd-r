class AddOldContentToMark < ActiveRecord::Migration
  def change
    add_column :marks, :old_content, :text
  end
end
