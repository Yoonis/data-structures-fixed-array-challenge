class FixedArray
  def new(size)
    @fixed = Array.new(size)
  end

  def get(index)
    raise IndexError if (index < 0 || index > @fixed.length - 1)
    @fixed[index]
  end

  def set(index, element)
    raise IndexError if (index < 0 || index > @fixed.length - 1)
    @fixed[index] = element
    @fixed[index]
  end
end
