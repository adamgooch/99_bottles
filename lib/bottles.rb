class Bottles
  def verse(number_of_bottles)
    if(number_of_bottles) == 0
      return no_more_bottles
    end
    first_stanza(number_of_bottles) + final_stanza(number_of_bottles - 1)
  end

  def verses(first_verse_bottles, last_verse_bottles)
    current_bottles = first_verse_bottles
    result = "#{verse(current_bottles)}\n"
    while(current_bottles > last_verse_bottles)
      current_bottles = current_bottles - 1
      result += "#{verse(current_bottles)}"
      result += "\n" if current_bottles > last_verse_bottles
    end
    result
  end

  def song
    verses(99, 0)
  end

  private

  def pluralize(count, word)
    count > 1 ? "#{word}s" : word
  end

  def first_stanza(number_of_bottles)
    "#{number_of_bottles} #{pluralize(number_of_bottles, 'bottle')} " +
    "of beer on the wall, " +
    "#{number_of_bottles} #{pluralize(number_of_bottles, 'bottle')} " +
    "of beer.\n"
  end

  def final_stanza(number_of_bottles)
    if(number_of_bottles == 0)
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    else
      "Take one down and pass it around, " +
      "#{number_of_bottles} #{pluralize(number_of_bottles, 'bottle')} " +
      "of beer on the wall.\n"
    end
  end

  def no_more_bottles
    "No more bottles of beer on the wall, no more bottles of beer.\n" +
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end
