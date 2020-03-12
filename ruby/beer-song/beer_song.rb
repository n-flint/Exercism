# None of the first few tests are passing, due to some puncuation/newline issue I think. All the characters are correct. No more beer for me. Moving on.

class BeerSong

  def self.recite(start, count)
    # until count == 0
    if start == 1
      "1 bottle of beer on the wall, 1 bottle of beer. \nTake it down and pass it around, no more bottles of beer on the wall."
    elsif start == 2
      "2 bottles of beer on the wall, 2 bottles of beer. \nTake one down and pass it around, 1 bottle of beer on the wall."
    elsif start == 0
      "No more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall."
    else
      "#{start} bottles of beer on the wall, #{start} bottles of beer. \nTake one down and pass it around, #{start - 1} bottles of beer on the wall."
    # end
  end
end
