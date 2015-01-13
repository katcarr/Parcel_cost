class Parcel

  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:volume) do
    if @length < 0 || @width < 0 || @height <0
      0
    else
      @length * @width * @height
    end
  end

  define_method(:cost_to_ship) do
    if @weight > 0 && @weight <= 10
      volume().*(0.02)
    elsif @weight > 10 && @weight <=50
      volume().*(0.05)
    elsif @weight > 50
      volume().*(0.10)
    else
      0
    end
  end
end
