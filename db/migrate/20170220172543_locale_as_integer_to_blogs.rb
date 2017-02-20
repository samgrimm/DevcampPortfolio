class LocaleAsIntegerToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :language, :string
  end
end
