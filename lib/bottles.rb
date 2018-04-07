class Bottles
  def verse(number_of_bottles)
    if(number_of_bottles) == 0
      return no_more_bottles
    end
    first_stanza(number_of_bottles) + final_stanza(number_of_bottles - 1)
  end

  def verses(first_verse_bottles, last_verse_bottles)
    result = "#{verse(first_verse_bottles)}\n"
    next_number = first_verse_bottles - 1
    if next_number > last_verse_bottles
      result += "#{verse(first_verse_bottles - 1)}"
    else
      result += "#{verse(second_verse_bottles)}"
    end
    puts '*******************************'
    puts "result: #{result.inspect}"
    puts '*******************************'

    result
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
