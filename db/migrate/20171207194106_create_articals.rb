class CreateArticals < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :link
      t.string :description
      t.belongs_to :user

      t.timestamps
    end
  end
end
