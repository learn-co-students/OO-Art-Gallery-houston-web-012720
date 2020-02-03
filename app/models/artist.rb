class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select { |painting|
      painting.artist == self
    }
  end

  def galleries
    paintings.map { |painting|
      painting.gallery
    }.uniq
  end

  def cities
    galleries.map{ |gallery|
      gallery.city
    }.uniq
  end

  def create_painting(title, price, gallery)
    Painting.new(title, self, price, gallery)
  end



  def self.all
    @@all
  end

  def self.total_experience
    @@all.sum{ |sum = 0, artist|
      sum = sum + artist.years_experience
    }
  end

  def self.most_prolific
    @@all.max_by{ |artist|
      artist.paintings.length / artist.years_experience
    }
  end

end



#   * `Artist.total_experience`
#     * Returns an `integer` that is the total years of experience of all artists

#   * `Artist.most_prolific`
#     * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

#   * `Artist#create_painting`
#     * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist

