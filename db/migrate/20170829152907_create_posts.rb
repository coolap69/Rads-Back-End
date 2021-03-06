class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :user_id
      t.text :description
      t.string :title
      t.datetime :date_time
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
