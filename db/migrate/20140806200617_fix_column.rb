class FixColumn < ActiveRecord::Migration
  def change
    rename_column :courses, :univerisity_id, :university_id
  end
end
