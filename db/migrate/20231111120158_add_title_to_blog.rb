class AddTitleToBlog < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :content, :text
    add_column :blogs, :starttime, :datetime
  end
end
