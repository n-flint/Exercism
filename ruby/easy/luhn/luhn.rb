class Luhn

  def self.valid?(num_string)
    while check_input(num_string)
      dub_array = double(check_input(num_string))
      sum = sub_sum(dub_array)
      if sum % 10 == 0
        return true
      else
        return false
      end
    end
  end

  def self.check_input(num_string)
    if num_string.lstrip.length > 1
      num_array = []
      compact = num_string.delete(' ')
      compact.each_char do |c|
          num_array << c
      end
      num_array.each do |c|
        return false if ('a'..'z').include?(c)
      end
    else
      return false
    end
    num_array
  end

  def self.double(input)
    r = input.reverse
    dub = r.each.with_index do |num, i|
      # This should not be necesasryy, if the index is even, it should just leave it alone.
      if i.odd?
        r[i] = (num.to_i * 2)
      else
        r[i] = num.to_i
      end
    end
    dub
  end

  def self.sub_sum(input)
    nums = []
    input.each do |num|
      if num > 9
        nums << (num - 9)
      else
        nums << num
      end
    end
    nums.sum
  end
end