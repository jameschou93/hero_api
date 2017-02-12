class AddSchema < ActiveRecord::Migration[5.0]
  def change
    add_column :heros, :name, :string
    add_column :heros, :power, :string
    add_column :heros, :bad_guy, :string
  end
end
