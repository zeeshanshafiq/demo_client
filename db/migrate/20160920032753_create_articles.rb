class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :user_id
      t.string :price
      t.string :descricption

      t.timestamps null: false
    end
  end
end
