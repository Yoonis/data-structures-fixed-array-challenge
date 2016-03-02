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

# require './fixed_array.rb'
# abc = FixedArray.new
# abc.new(3)
# abc.set(2, "lol")
# abc.get(2)