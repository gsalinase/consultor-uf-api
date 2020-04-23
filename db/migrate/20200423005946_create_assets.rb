class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.datetime :date
      t.float :value

      t.timestamps
    end
  end
end
