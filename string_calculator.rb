module StringCalculator

  def self.add(string_numbers)
    return 0 if string_numbers.empty?
    return 0 unless string_numbers.match?(/\d/)
    negative_numbers = []
    numbers = string_numbers.split(/,|\n|;/).map(&:to_i)

    numbers.select{ |x| negative_numbers << x if x.negative?}

    raise ArgumentError.new("negative numbers not allowed #{negative_numbers.join(',')}") if negative_numbers.any?
    return numbers.sum
  end

end