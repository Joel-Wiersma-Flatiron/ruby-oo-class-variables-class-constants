class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    skip = false
    BRANDS.each do |bran|
      skip = true if bran == brand
    end
    BRANDS << brand if skip == false
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end