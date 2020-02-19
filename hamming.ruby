class HammingCalculator
  def calculate string1, string2

    order_strings(string1, string2)
    puts @longString
    puts @shortString
    count = 0

    @longString.each_char.with_index do |char, index|
      charToTest = @shortString[index]
puts char
puts charToTest
      if char != charToTest
        count+=1
      end
      puts count
    end

    count
  end

  private
  def order_strings(string1, string2)
    if string1.length >= string2.length
      @longString = string1
      @shortString = string2
    else
      @longString = string2
      @shortString = string1
    end
  end
end
