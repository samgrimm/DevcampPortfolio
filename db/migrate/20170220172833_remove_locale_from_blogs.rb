class RemoveLocaleFromBlogs < ActiveRecord::Migration[5.0]
  def change
    remove_column :blogs, :locale, :string
  end
end
