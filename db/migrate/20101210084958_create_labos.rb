class CreateLabos < ActiveRecord::Migration
  def self.up
    create_table :labos do |t|
	t.string "student_id", :limit => 25
	t.string "labo_name", :limit => 50
	t.string "docent_name", :default => "", :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :labos
  end
end
