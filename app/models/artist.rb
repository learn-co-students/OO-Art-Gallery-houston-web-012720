class Artist

  attr_reader :name, :years_experience
  @@all = []
  

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|p| p.artist == self}
  end 

  def galleries
    paintings.map {|g| g.gallery} 
  end 

  def cities
    paintings.map {|g| g.gallery.city}
  end 
  def self.total_experience
    self.all.sum {|a| a.years_experience}
  end

  # def self.most_prolific
    # @@all.map do|a| 
    #   year_of_exp = a.years_experience
    #   num_of_pantings = Painting.all.select {|p| p.artist == a}.count
    #   prolific = num_of_pantings / years_of_exp 
    # end

    


    
    
  # end

  def self.most_prolific
    a = @@all[0]

    @@all.each do |artist|
      if (artist.paintings.count/artist.years_experience) > (a.paintings/a.years_experience)
        a = artist
      end
    end

    a
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 

end



