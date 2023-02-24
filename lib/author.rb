class Author
  attr_reader :name, :books

  def initialize(name)
    @first_name = name[:first_name]
    @last_name = name[:last_name]
    @books = []
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def write(title, publication_date)
    Book.new({
      title: title.to_s,
      publication_date: publication_date.to_s,
      author_first_name: @first_name,
      author_last_name: @last_name
    })
  end

  def add_books(book)
    @books.push(book)
  end
end
