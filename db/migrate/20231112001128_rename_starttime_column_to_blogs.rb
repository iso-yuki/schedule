class RenameStarttimeColumnToBlogs < ActiveRecord::Migration[6.1]
  def change
    rename_column :blogs, :starttime, :start_time
  end
end
