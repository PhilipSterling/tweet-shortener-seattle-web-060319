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
    
    array = tweet.split(" ")

    array.map! do |x|
      sub_words.each do |key, value| 
        if(x == key.to_s)
          x = sub_words[key]
        end
      end
    end
    string = array.join(" ")
    return string
end
word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")