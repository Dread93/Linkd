class User < ActiveRecord::Base
    def change
        create_table :users do |t|
            t.string :name
            t.string :password
            t.string :email
            
            t.timestamps null: false
        end
    end
end
