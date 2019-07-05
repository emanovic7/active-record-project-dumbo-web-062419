

class RemoveColumnFromCategories < ActiveRecord::Migration[5.2]

  def change
    remove_column :categories, :book_id
  end

end
