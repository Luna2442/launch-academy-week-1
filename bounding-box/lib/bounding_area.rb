class BoundingArea
  def initialize(box_array)
    @box_array = box_array
  end

  def boxes_contain_point?(x,y)
    @box_array.each do |box|
      if box.contains_point?(x, y)
        return true
      end
    end
    return false
  end

end
