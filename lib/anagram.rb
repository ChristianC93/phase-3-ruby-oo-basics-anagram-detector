# Your code goes here!
require 'pry'
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(word_array)
        @word_array = word_array
        @char_array = @word_array.map{|word| word.chars}
        @anagram_list = @char_array.filter{|char| char.sort == @word.split("").sort}
        @anagrams = @anagram_list.map{|anagram| anagram.join("")}
    end    
end

# listen = Anagram.new("listen")
# listen.match(%w[enlists google inlets banana])
# binding.pry
