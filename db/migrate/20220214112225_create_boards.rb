class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :title
      t.string :img
      t.string :description

      t.timestamps
    end
  end
end
