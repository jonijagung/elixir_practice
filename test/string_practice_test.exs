defmodule ElixirPractice.StringPracticeTest do
  use ExUnit.Case
  doctest ElixirPractice

  # gives an alias to the ElixirPractice.StringPractice module so we only have to call StringPractice
  alias ElixirPractice.StringPractice

  describe "reverse_string/1" do
    test "reverses the string" do
      assert StringPractice.reverse_string("hello") == "olleh"
      assert StringPractice.reverse_string("world") == "dlrow"
    end
  end

  describe "count_vowels/1" do
    test "counts the number of vowels in a string" do
      assert StringPractice.count_vowels("hello") == 2
      assert StringPractice.count_vowels("world") == 1
    end
  end

  describe "capitalize_words/1" do
    test "capitalizes the first letter of each word in a string" do
      assert StringPractice.capitalize_words("hello world") == "Hello World"
      assert StringPractice.capitalize_words("elixir programming") == "Elixir Programming"
    end
  end

  describe "replace_substring/3" do
    test "replaces all instances of a substring with another substring" do
      assert StringPractice.replace_substring("hello world", "world", "universe") == "hello universe"
      assert StringPractice.replace_substring("hello world world", "world", "earth") == "hello earth earth"
    end
  end

  describe "find_longest_word/1" do
    test "finds the longest word in a string" do
      assert StringPractice.find_longest_word("programming elixir") == "programming"
      assert StringPractice.find_longest_word("hello world") == "hello"
    end
  end

  describe "remove_whitespace/1" do
    test "removes all whitespace in a string" do
      assert StringPractice.remove_whitespace("hello world") == "helloworld"
      assert StringPractice.remove_whitespace("elixir programming") == "elixirprogramming"
    end
  end

  describe "count_words/1" do
    test "counts the number of words in a string" do
      assert StringPractice.count_words("hello world") == 2
      assert StringPractice.count_words("elixir is awesome") == 3
    end
  end

  describe "contains_substring?/2" do
    test "checks if a string contains a substring" do
      assert StringPractice.contains_substring?("hello world", "world") == true
      assert StringPractice.contains_substring?("hello dave", "world") == false
    end
  end

  describe "repeat_string/2" do
    test "repeats a string n times" do
      assert StringPractice.repeat_string("hello", 3) == "hellohellohello"
      assert StringPractice.repeat_string("world", 2) == "worldworld"
    end
  end

  describe "to_uppercase/1" do
    test "converts a string to uppercase" do
      assert StringPractice.to_uppercase("hello") == "HELLO"
      assert StringPractice.to_uppercase("world") == "WORLD"
    end
  end

  describe "split_into_words/1" do
    test "splits a string into words" do
      assert StringPractice.split_into_words("hello world") == ["hello", "world"]
      assert StringPractice.split_into_words("elixir is awesome") == ["elixir", "is", "awesome"]
    end
  end

  describe "remove_character/2" do
    test "removes a specific character from a string" do
      assert StringPractice.remove_character("hello", "l") == "heo"
      assert StringPractice.remove_character("world", "o") == "wrld"
    end
  end

  describe "count_char_occurrences/2" do
    test "counts the number of occurrences of a specific character in a string" do
      assert StringPractice.count_char_occurrences("hello", "l") == 2
      assert StringPractice.count_char_occurrences("world", "o") == 1
    end
  end

  describe "remove_duplicates/1" do
    test "removes duplicate characters from a string" do
      assert StringPractice.remove_duplicates("hello world") == "helo wrd"
      assert StringPractice.remove_duplicates("programming") == "progamin"
    end
  end

  describe "remove_non_alphanumeric/1" do
    test "removes all non-alphanumeric characters from a string" do
      assert StringPractice.remove_non_alphanumeric("hello world!") == "helloworld"
      assert StringPractice.remove_non_alphanumeric("elixir123!") == "elixir123"
    end
  end
end
