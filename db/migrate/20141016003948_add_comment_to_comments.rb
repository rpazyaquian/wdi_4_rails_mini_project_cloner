class AddCommentToComments < ActiveRecord::Migration
  def change
    # yo dawg
    add_reference :comments, :comment, index: true
  end
end
