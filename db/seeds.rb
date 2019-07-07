User.destroy_all
Book.destroy_all
Checkout.destroy_all
Category.destroy_all

%w(Emmanuel Anna Madeline Jonathan Mijo Vida Genesis Comfort).each do |name|
  User.create(name: name)
end


[
  "Holy Bible",
  "Chamber Of Secrets",
  "Moby Dick",
  "Hunger Games",
  "Half Blood Prince",
  "A Child Called It",
  "Things Fall Apart",
  "Long Walk To Freedom",
  "The Great Gatsby",
  "Hamlet"
].each do |book|
  Book.create(title: book)
end


[
  "Paul the Apostle",
  "JK Rolwing",
  "Herman Melville",
  "Suzanne Collins",
  "Dave Pelzer",
  "Chinua Achebe",
  "Nelson Mandela",
  "F Scott Fitzgerald",
  "William Shakespeare"
].each do |author|
  Author.create(name: author)
end


%w(Fiction Fantasy Non-Fiction Mystery Thriller Play Science-Fiction Romance).each do |category|
  Category.create(name: category)
end

puts "Done Seeding!!"
