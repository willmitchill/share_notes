class AddUpvoteCountToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :upvote_count, :integer, :default => 0
  end
end
