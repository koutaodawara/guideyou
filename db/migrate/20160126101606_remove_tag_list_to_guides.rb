class RemoveTagListToGuides < ActiveRecord::Migration
  def change
    remove_column :guides,:tag_list,:string
  end
end
