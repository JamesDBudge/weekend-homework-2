class Guest

  attr_reader :name, :favourite_song
  attr_accessor :cash

  def initialize(name, favourite_song, cash)
    @name = name
    @cash = cash
    @favourite_song = favourite_song
  end


  def thats_my_fave(song)
    return "WOOO!!!" if favourite_song == song
  end








end
