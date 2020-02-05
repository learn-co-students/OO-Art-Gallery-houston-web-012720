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
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map{|gallery| gallery.city}.uniq
  end

  def self.total_experience
    all.sum{|artist| artist.years_experience}
  end

  def self.most_prolific
    all.max_by{|artist| artist.paintings.count.to_f / artist.years_experience}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

    # def self.artists_outputs
  #   all.map{|artist| artist.paintings.count}
  # end

  # def self.artists_years_experience
  #   all.map{|artist| artist.years_experience}
  # end

  # def self.most_prolific_ewww
  #   outputs_per_year = artists_outputs.map.with_index do |output, index|  output.to_f/artists_years_experience[index]
  #   end
  #   max_output_per_year = outputs_per_year.max
  #   all[outputs_per_year.find_index(max_output_per_year)]
  # end

  # def self.most_prolific_good
  #   all.max{|a,b| a.paintings.length/ a.years_experience.to_f <=> b.paintings.length / b.years_experience.to_f}
  # end
end