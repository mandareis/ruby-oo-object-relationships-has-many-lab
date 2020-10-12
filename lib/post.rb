require "pry"

class Post
  @@all = []

  def self.all
    @@all
  end
  def self.author_name
  end
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author
      return self.author.name
    end
  end
end

# sophie = Author.new("Sophie")
# binding.pry
