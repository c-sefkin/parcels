require ('rspec')
require ('parcels')
require ('pry')

describe(Parcels) do
  describe("#volume") do
    it ("retrieves the volume of a package from the dimensions") do
      test_parcel = Parcels.new(50,2,2,2)
      expect(test_parcel.volume()).to(eq(8))
    end
    it ("determine the cost to ship a parcel") do
      test_parcel = Parcels.new(50,2,2,2)
      expect(test_parcel.cost()).to(eq(58))
    end
  end
end
