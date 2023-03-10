class AddCodeOrderArchiveToDiary < ActiveRecord::Migration[7.0]
  def change
    add_column :diaries, :code, :string
    add_column :diaries, :order, :integer, default: 0, null: 0
    add_column :diaries, :archive, :boolean,default: false, null: false
  end
end
