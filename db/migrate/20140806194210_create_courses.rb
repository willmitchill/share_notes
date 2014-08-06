class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :department
      t.references :user, index: true
      t.references :univerisity, index: true

      t.timestamps
    end
  end
end
