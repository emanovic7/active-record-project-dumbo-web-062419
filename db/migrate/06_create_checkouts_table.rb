

class CreateCheckoutsTable < ActiveRecord::Migration[5.2]

  def change
    create_table :checkouts do |c|
      c.boolean :checked_out

      c.datetime :due_date
      c.boolean :returned

      c.integer :book_id
      c.integer :user_id
    end
  end

end
