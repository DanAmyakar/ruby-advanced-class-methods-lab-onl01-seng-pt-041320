class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create_by_name(name)
    song = 

  def self.find_by_name(name)
    @@all.find{|a| a.name == name}
  end

  def self.find_or_create_by_name(name)
    #if self.find_or_create_by_name(name) == nil
    # self.create_by_name(name)
    #else
    # self.find_by_name(name)
    #end
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.alphabetical()
    @@all.sort_by{|a|a.name}
  end

  def self.new_from_filename(name)
    song = self.new
    song.name = (name.split(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - ")[0])
    song
  end

  def self.create_from_filename(name)
    song = self.new
    song.name = (name.spilt(" - ")[1].chomp(".mp3"))
    song.artist_name = (name.split(" - ")[0])
    @@all << song
    song
  end

  def self.destroy_all()
    @@all.clear
  end

end
