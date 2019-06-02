# Write your code here.
def dictionary
  replacements = {
    :hello => "hi",
    :to => "2",
    :two => "2",
    :too => "2",
    :for => "4",
    :four => "4",
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
  return replacements
end
def word_substituter(tweet)
    sub_words = dictionary
    puts sub_words
    array = tweet.split(" ")
    returnarray = array.map do |x|
      sub_words.each do |key, value|
        if(x == key.to_s)
          x = value
        end
      end
    end
    string = returnarray.join(" ")
    return string
end
word_substituter