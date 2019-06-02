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
    testarray = sub_words.keys
    array = tweet.split(" ")

    array2 = array.collect do |x|
      i = 0
      for i in 0..testarray.length-1 do 
        if(x == testarray[i].to_s)
          x = sub_words[testarray[i]]
        end
      end
      x
    end
    string = array2.join(" ")
    return string
end
def bulk_tweet_shortener(tweetarray)
  tweetarray.each do |x| 
    puts word_substituter(x)  
  end
end