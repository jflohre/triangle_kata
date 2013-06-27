class CreateRectangles < ActiveRecord::Migration
  def change
    create_table :rectangles do |t|

      t.timestamps
    end
  end
end
