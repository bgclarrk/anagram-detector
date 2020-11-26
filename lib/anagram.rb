class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(words_list)
        potential_anagram = []
        @words_list = words_list
        @words_list.each do |word|
            potential_anagram << word if word.split("").sort_by!{ |e| e.downcase } == @word.split("").sort_by!{ |e| e.downcase }
        end
        potential_anagram.empty? ? [] : potential_anagram
    end
end