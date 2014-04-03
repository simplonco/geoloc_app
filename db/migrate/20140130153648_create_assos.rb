class CreateAssos < ActiveRecord::Migration
  def change
    create_table :assos do |t|
      t.string :last_name
      t.string :email
      t.string :address
      t.string :phone
      t.string :time
      t.text :description
      t.text :besoins
      t.timestamps
    end
  end
end
