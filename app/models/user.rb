class User < ActiveRecord::Base
  has_many :checkouts
  has_many :books, through: :checkouts



  def checkout_book(book)
    #find book by name and set book_id
    #same for user
    book = Book.find_by(title: book)
    # binding.pry

    checked_out_book = Checkout.create(book_id: book.id, user_id: self.id)
    checked_out_book.checked_out = true
    checked_out_book.user_id = self.id

    #DATES
    checked_out_date = Time.now.strftime("%A, %B %d, %Y")
    checked_out_book.due_date = Time.now + (7*24*3600)
    checked_out_book.due_date.strftime("%A, %B %d, %Y")

    puts "You've checked out: #{book.title}"
    puts "Checked Out Date: #{checked_out_date}"
    puts "Due Date: #{checked_out_book.due_date}"

  end

  def books
    puts "You've checked out the following books:"
    Checkout.all.each_with_index do |checkout, i|
      if checkout.user_id == self.id
        puts "#{i+1}. #{checkout.book.title}"
      end
    end
    return "Enjoy your reads"
  end

  # def return_book(book_id, user_id)
  #
  # end



end

#
# create_table "checkouts", force: :cascade do |t|
#   t.boolean "checked_out"
#   t.datetime "due_date"
#   t.boolean "returned"
#   t.integer "book_id"
#   t.integer "user_id"
# end
