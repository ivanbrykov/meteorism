class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      t.string :title
      t.text :content
      t.string :state

      t.timestamps
    end
  end
end
