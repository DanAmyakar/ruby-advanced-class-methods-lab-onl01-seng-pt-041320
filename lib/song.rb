class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    @@all << self
  end
  
  def self.new_by_name(name)
    @@all << self.:name(name)
  end
  
  def self.create_by_name
  end
  
  def self.find_by_name
  end

  def self.new_from_filename(name)
    

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
