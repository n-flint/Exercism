class PhoneNumber

  def self.clean(phone_input)
    num_arr = just_nums(phone_input)
    nine_num = validate_length(num_arr)
    check_codes(nine_num) unless nine_num == nil
  end

  def self.just_nums(phone_input)
    num_arr = []
    phone_input.each_char do |c|
      num_arr << c if ('0'..'9').include?(c)
    end
    num_arr.join
  end

  def self.validate_length(num_input)
    if num_input.length < 10
      nil
    elsif num_input.length == 11 && num_input[0] == '1'
      return num_input[1..-1] #removes first index, '1'
    elsif num_input.length == 11 && num_input[0] != '1'
      nil
    elsif num_input.length > 10
      nil
    else
      num_input
    end
  end

  def self.check_codes(input)
    if input[0] == '0' || input[0] == '1'
      return nil
    elsif input[3] == '0' || input[3] == '1'
      return nil
    else
      input
    end
  end
end