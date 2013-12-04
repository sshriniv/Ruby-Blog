class AddCommentDateToComment < ActiveRecord::Migration
  def change
    add_column :comments, :comment_date, :date
  end
end
