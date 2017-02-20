class AddLanguageToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :language, :integer
  end
end
