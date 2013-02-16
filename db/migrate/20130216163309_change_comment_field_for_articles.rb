class ChangeCommentFieldForArticles < ActiveRecord::Migration
  def up
    remove_column :articles, :comment
  end

  def down
    add_column :articles, :comment
  end
end
