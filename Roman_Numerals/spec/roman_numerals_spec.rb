require("rspec")
require("roman_numerals")

# describe('rn_getter') do
#   it("should return 'L' with input of '3,r'") do
#     rn_getter(3,"r").should(eq("L"))
#   end
#   it("should return '50' with input of '3,n'") do
#     rn_getter(3,"n").should(eq(50))
#   end  
# end

describe("doit") do
  it("should return 'II' with input of 2") do
    doit(2,6,'').should(eq('II'))
  end
  it("should return 'V' with input of 5'") do
    doit(5,6,'').should(eq('V'))
  end
  it("should equal 'L' with input of 50") do
    doit(50,6,'').should(eq('L'))
  end
  it("should return 'DCCLXII with input of 762 -- more than one digit") do
    doit(762,6,'').should(eq('DCCLXII'))
  end
  it("should return 'M' with input of 1000 - 4 digits") do
    doit(1000,6,'').should(eq('M'))
  end
  it("should return 'IV' with input of 4") do
    doit(4,6,'').should(eq('IV'))
  end
  it("should return 'IX' with input of 9") do
    doit(9, 6, '').should(eq('IX'))
  end
  it("should return 'XCIII' with input of 93") do
    doit(93, 6, '').should(eq('XCIII'))
  end
  it("should return 'LIV' with input of 54") do
    doit(54, 6, '').should(eq('LIV'))
  end
  it("should return 'XLII with input of 42") do
    doit(42, 6, '').should(eq('XLII'))
  end
  it("should return 'MMMCMXCIX' with input of 3999") do
    doit(3999, 6, '').should(eq('MMMCMXCIX'))
  end
end

