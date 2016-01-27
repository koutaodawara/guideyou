class AddTagListToGuide < ActiveRecord::Migration
  def change
    add_column :guides,:tag_list,:string
  end
end
