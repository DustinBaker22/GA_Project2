class AddColumnsTitleDescriptionToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :title, :string
    add_column :boards, :description, :string
  end
end
