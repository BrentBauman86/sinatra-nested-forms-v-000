class Pirate
# has_many :ships
  attr_accessor :name, :weight, :height

  PIRATE = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATE << self
  end

  def self.all
    @@pirate
  end
end
