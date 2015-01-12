require('rspec')
require('Parcel')

describe (Parcel) do
  describe ('#volume') do
    it("returns the volume of a box given a length, width, and height") do
      test_parcel = Parcel.new(45,12,3,33)
      expect(test_parcel.volume()).to(eq(1620))
    end
    it("returns 0 if length or height or width are negative") do
      test_parcel = Parcel.new(45,-12,3,33)
      expect(test_parcel.volume()).to(eq(0))
    end
  end

  describe('#cost_to_ship') do
    it("returns 0.02 * volume if weight is between 0-10lbs") do
      test_parcel = Parcel.new(45,12,3,2)
      expect(test_parcel.cost_to_ship()).to(eq(32.4))
    end
    it("returns 0.05 *volume if weight is greater than 10 and less than 50lbs") do
      test_parcel = Parcel.new(45,12,3,20)
      expect(test_parcel.cost_to_ship()).to(eq(81))
    end
    it("returns 0.10 *volume if weight is greater than 50lbs") do
      test_parcel = Parcel.new(45,12,3,60)
      expect(test_parcel.cost_to_ship()).to(eq(162))
    end
    it("returns 0 if weight is negative") do
      test_parcel = Parcel.new(45,12,3,-60)
      expect(test_parcel.cost_to_ship()).to(eq(0))
    end
  end
end
