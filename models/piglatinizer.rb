class PigLatinizer
    attr_accessor :word

    def piglatinize_word(word)
        if ["a","e","i","o","u"].include?(word[0].downcase)
            pig = word + "way"
        else
            pig = word[1..] + word[0] + "ay"
            if ["a","e","i","o","u"].include?(word[1].downcase) == false
                pig = word[2..] + word[0..1] + "ay"
                if ["a","e","i","o","u"].include?(word[2].downcase) == false
                    pig = word[3..] + word[0..2] + "ay"
                end
            end
        end
        pig
    end

    def piglatinize(info)
        words = info.split
        words.map {|word| piglatinize_word(word)}.join(" ")
    end
end