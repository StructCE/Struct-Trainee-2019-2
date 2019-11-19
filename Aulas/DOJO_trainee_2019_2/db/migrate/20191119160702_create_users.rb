class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :cpf
      t.date :dn
      t.string :email
      t.string :matricula
      
      t.timestamps
    end
  end
end
