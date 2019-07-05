

class CreateBooks < ActiveRecord::Migration[5.2]

  def change
    create_table :books do |b|
      b.string :title
      b.integer :category_id
      b.integer :author_id
    end
  end

end
