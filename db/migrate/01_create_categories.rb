
class CreateCategories < ActiveRecord::Migration[5.1]

  def change
    create_table :categories do |c|
      c.string :name
      c.integer :book_id
    end
  end

end
