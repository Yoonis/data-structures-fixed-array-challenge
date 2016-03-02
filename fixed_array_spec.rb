require_relative 'fixed_array'

describe FixedArray do

  before(:each) do 
    @fixed_arr_obj = FixedArray.new
    @fixed_arr = @fixed_arr_obj.new(3)
  end

  describe "#new" do 
    it "takes an integer parameter and returns a new fixed array" do
      expect(@fixed_arr.length).to eq(3)
    end
  end

  describe "#get" do 
    it "takes an index parameter and returns the associated element" do
      expect(@fixed_arr_obj.get(2)).to be(@fixed_arr[2])
    end

    it "throws an IndexError when index parameter is out of bounds" do
      expect { @fixed_arr_obj.get(-1) }.to raise_error(IndexError)
    end
  end

  describe "#set" do 
    it "takes an index and an element parameter, and returns the new element" do
      expect(@fixed_arr_obj.set(2, "lol")).to be(@fixed_arr[2])
    end

    it "throws an IndexError when index parameter is out of bounds" do
      expect { @fixed_arr_obj.set(-1, "this won't work") }.to raise_error(IndexError)
    end
  end
  
end
