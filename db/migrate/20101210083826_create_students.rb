class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
	t.string "first_name", :limit => 25
	t.string "last_name", :limit => 50
	t.string "email", :default => "", :null => false
    end
  end

  def self.down
    drop_table :students
  end
end
