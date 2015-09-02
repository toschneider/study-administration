class CreateBlocksCourses < ActiveRecord::Migration
  def change
    create_table :blocks_courses, id: false do |t|
      t.references :block
      t.references :course
    end
  end
end
