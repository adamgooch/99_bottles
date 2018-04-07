class Bottles
  def verse(bottle_count)
    return no_more_bottles if(bottle_count) == 0
    first_stanza(bottle_count) + second_stanza(bottle_count - 1)
  end

  def verses(first_bottle_count, last_bottle_count)
    current_bottles = first_bottle_count
    result = "#{verse(current_bottles)}\n"
    while(current_bottles > last_bottle_count)
      current_bottles = current_bottles - 1
      result += "#{verse(current_bottles)}"
      result += "\n" if current_bottles > last_bottle_count
    end
    result
  end

  def song
    verses(99, 0)
  end

  private

  def pluralize_bottle(count)
    count > 1 ? "bottles" : "bottle"
  end

  def number_of_bottles(count)
    "#{count} #{pluralize_bottle(count)}"
  end

  def first_stanza(count)
    "#{number_of_bottles(count)} of beer on the wall, " +
    "#{number_of_bottles(count)} of beer.\n"
  end

  def second_stanza(count)
    if(count > 0)
      "Take one down and pass it around, " +
      "#{number_of_bottles(count)} of beer on the wall.\n"
    else
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    end
  end

  def no_more_bottles
    "No more bottles of beer on the wall, no more bottles of beer.\n" +
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end
