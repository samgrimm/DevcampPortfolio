class AddLocaleToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :locale, :string
  end
end
