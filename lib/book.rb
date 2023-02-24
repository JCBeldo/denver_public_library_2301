class Book
attr_reader :title, :author, :publication_year

  def initialize(book_details)
    @title = book_details[:title]
    @author_first_name = book_details[:author_first_name]
    @author_last_name = book_details[:author_last_name]
    @publication_date = book_details[:publication_date]
  end

  def author
    "#{@author_first_name} #{@author_last_name}"
  end

  def publication_year
    @publication_date.split[2]
  end
  
end
