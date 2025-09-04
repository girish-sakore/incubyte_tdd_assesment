module StringCalculator

  def self.add(string_numbers="")
    raise ArgumentError.new("only string is allowed") unless string_numbers.is_a?(String)
    return 0 unless string_numbers.match?(/\d/)
    numbers = string_numbers.split(/,|\n|;/).map(&:to_i)

    negative_numbers = numbers.select{ |x| x.negative?}

    raise ArgumentError.new("negative numbers not allowed #{negative_numbers.join(',')}") if negative_numbers.any?
    return numbers.sum
  end

end