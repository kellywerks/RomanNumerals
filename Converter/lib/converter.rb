def converter(letters, count)
  arabic = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000
  }
  lettersArray = letters.split('')
  lettersLength = lettersArray.length

  if (lettersLength == 0)
    count
  else
    
    if (lettersLength > 1)
      if (arabic[lettersArray[0]]<arabic[lettersArray[1]])
        count -= arabic[lettersArray[0]]
      else
        count += arabic[lettersArray[0]]
      end
    else
      count += arabic[lettersArray[0]]
    end
    lettersArray.shift
    converter(lettersArray.join(''), count)

  end
end  
