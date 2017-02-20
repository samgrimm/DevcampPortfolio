class ChangeLanguageToIntegerToBlogs < ActiveRecord::Migration[5.0]
  def change
    change_column :blogs, :language, 'integer USING CAST(language AS integer)'

  end
end
