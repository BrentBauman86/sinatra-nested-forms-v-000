class Ship 
# belongs_to :pirate
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    delete
  end
end
