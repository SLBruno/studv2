class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.references :curso, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :subscriptions, :cursos
    add_foreign_key :subscriptions, :users
      
      add_index  :subscriptions, [:curso_id, :user_id], :unique => true
  end
end
