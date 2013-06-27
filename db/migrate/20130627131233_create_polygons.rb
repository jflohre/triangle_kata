class CreatePolygons < ActiveRecord::Migration
  def change
    create_table :polygons do |t|

      t.timestamps
    end
  end
end
