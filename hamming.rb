class HammingCalculator
  def get_input
    puts "Enter first string:"
    input1 = gets.strip
    puts "Enter second string:"
    input2 = gets.strip

    difference = calculate input1, input2
    puts "The hamming difference between the two strings is #{difference}"
  end

  def calculate string1, string2

    order_strings(string1, string2)

    count = 0

    @longString.each_char.with_index do |char, index|
      charToTest = @shortString[index]

      if char != charToTest
        count+=1
      end
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

#  Code to run class as a script from command lin
# hc = HammingCalculator.new()
# hc.get_input