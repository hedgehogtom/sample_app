class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps  # Creates two magic columns called created_at and updated_at
    end
  end
end
