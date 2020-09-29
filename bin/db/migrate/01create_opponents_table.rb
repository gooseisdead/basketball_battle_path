class CreateUsersTable < ActiveRecord::Migration#version whatever comes out 

    def change 
        create_table :opponents do |t|
            t.string :name 
            t.string :team
            t.integer :rebounds
            t.integer :asts
            t.integer :three_pts

    end 
#Although you can create multiple tables within same migration 
#that is not convention, should have migration file for eveyrhting we do 
end 