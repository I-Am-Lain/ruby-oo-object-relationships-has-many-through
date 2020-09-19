class Bicycle

    attr_accessor :tire
    attr_reader :gears, :style


    @@all = []

    def initialize(tire, gears, style)
      @tire = tire
      @gears = gears
      @style = style
      @@all << self

    end

    def tire_size=(size)
      self.tire = size
    end

    def tire_size
        self.tire
    end

    def self.gears
      @gears
    end

    def self.bikes
        @@all
    end

    def self.styles
        Bicycle.bikes.collect do |bike|
            bike.style
        end
    end

end

mongoose = Bicycle.new(4, 10, "BMX")
mongoose2 = Bicycle.new(22, 15, "ddfghfX")
mongoose3 = Bicycle.new(100, 55, "-------------")

p mongoose
mongoose.tire_size = 5
p mongoose.tire_size
mongoose.gears
p mongoose.gears
p Bicycle.bikes
p Bicycle.styles