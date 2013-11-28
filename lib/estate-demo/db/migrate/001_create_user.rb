require 'active_record'

class CreateUser < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :firstname, :string, :null => false
      t.column :lastname, :string, :null => false
      t.column :username, :string, :null => false
      t.column :password, :string, :null => false
    end
  end

  def self.down
     drop_table :users
  end
end
