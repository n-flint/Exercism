class Year

  def self.leap?(input_date)
    if input_date % 4 == 0
      if input_date % 100 == 0
        true if input_date % 400 == 0
      else
        true
      end
    else
      false
    end
  end
end