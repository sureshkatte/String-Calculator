class Calculator
  def self.add(input)
    return 0 if input.blank?

    delimiter = ','

    numbers = input.split(delimiter).map(&:to_i)

    numbers.sum
  end
end