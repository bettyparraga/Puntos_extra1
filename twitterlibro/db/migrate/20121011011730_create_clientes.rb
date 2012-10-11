class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :email
      t.string :nombre
      t.string :dirtwitter

      t.timestamps
    end
  end
end
