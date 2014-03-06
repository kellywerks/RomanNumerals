require ('rspec')
require ('converter')

describe("converter") do
  it("should convert 'M' to '1000'") do
    converter('M', 0).should(eq(1000))
  end
  it("should convert 'MCXXII' to '1122'") do
    converter('MCXXII', 0).should(eq(1122))
  end
  it("should convert 'XCIII' to 93") do
    converter('XCIII', 0).should(eq(93))
  end
end
