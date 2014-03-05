def doit(number, level, placeholder)

  if number == 0
    placeholder
  else

    numeral = rn_getter(level, 'n')
    divided = number / numeral

    if (divided == 0)
      doit(number, level-1, placeholder)

    elsif (number.to_s.chars[0] == '9')
      upLevel = level + 1
      numeral = rn_getter(level - 1, 'n')
      placeholder += rn_getter(level - 1, 'r') + rn_getter(upLevel, 'r')
      newNumber = number % numeral
      doit(newNumber, level - 1, placeholder)

    elsif (divided < 4)
      placeholder += rn_getter(level, 'r') * divided
      newNumber = number%numeral
      doit(newNumber,level-1,placeholder)

    else
      upLevel = level + 1
      placeholder += rn_getter(level, 'r') + rn_getter(upLevel, 'r')
      newNumber = number % numeral
      doit(newNumber, level - 1, placeholder)
    end
  end
end  


def rn_getter(number, which)
  roman_numerals = {
      0 => { "r" => "I", "n" => 1},
      1 => { "r" => "V", "n" => 5},
      2 => { "r" => "X", "n" => 10},
      3 => { "r" => "L", "n" => 50},
      4 => { "r" => "C", "n" => 100 },
      5 => { "r" => "D", "n" => 500 },
      6 => { "r" => "M", "n" => 1000 }
    }

    roman_numerals[number][which]
end
