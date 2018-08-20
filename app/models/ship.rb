class Ship
# belongs_to :pirate
  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    SHIPS << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    delete
  end
end
