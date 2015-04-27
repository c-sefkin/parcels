class Parcels
  define_method(:initialize) do |distance, l, w, h|
    @distance = distance
    @l = l
    @w = w
    @h = h
  end

  define_method(:volume) do
    (@l).*(@w).*(@h)
  end

  define_method(:cost) do
    if @distance >= 50
      distance_cost = volume().+(@distance)
    elsif @distance < 50
      distance_cost = 0
    end
    distance_cost
  end
end
