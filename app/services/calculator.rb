class Calculator
  def self.add(input)
    return 0 if input.blank?

    if input.start_with?("//")
      delimiter, input = parse_custom_delimeter(input)
    else
      delimiter = /,|\n/
    end

    numbers = input.split(delimiter).map(&:to_i)

    numbers.sum
  end

  private

  def self.parse_custom_delimeter(input)
    match = input.match(%r{//(.)\n(.*)})
    [Regexp.escape(match[1]), match[2]]
  end
end