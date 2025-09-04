module StringCalculator

  def self.add(string_numbers)
    return 0 if string_numbers.empty?
    return 0 unless string_numbers.match?(/\d/)

    numbers = string_numbers.split(/,|\n|;/).map(&:to_i)
    return numbers.sum
  end

end