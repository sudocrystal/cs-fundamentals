$feelings = {
  happy: %w(yay good great),
  sad: %w(terrible awful horrible)
}

# Used these 2 method for my own testing...
#########################################################
def generate_entry
  all_the_feels = $feelings.values.flatten
  entry = "%02d/%02d " % [rand(12)+1,rand(28)+1]
  10.times do
    if rand(4) < 1
      entry += all_the_feels[rand(all_the_feels.length)]
    else
      entry += "---"
    end
    entry += " "
  end
  return entry
end

def generate_text
  text = []
  10.times do
    text.push(generate_entry)
  end
  return text.sort
end
#########################################################

def overall_mood(entries)
  return nil if entries.length == 0
  emoticons = Hash.new(0)
  entries.each do |entry|
    emoticon = analyze_mood(entry)
    emoticons[emoticon] += 1
  end
  return emoticons.max_by{|k,v| v}[0]
end

def happy_days(entries)
  moody_days(entries,":-)",3)
end

def moody_days(entries,emoticon,days)
  count = 0
  entries.each do |entry|
    count += 1
    if analyze_mood(entry) == emoticon
      days -= 1
    end
    return count if days == 0
  end
  return nil
end

def strip_punctuation(s)
  s.gsub!(/[.!,#]/,"")
  return s
end

def analyze_mood(words)
  words = strip_punctuation(words)
  happy = 0
  sad = 0
  words.downcase!
  words.split(" ").each do |word|
    if $feelings[:happy].include? word
      happy += 1
    elsif $feelings[:sad].include? word
      sad += 1
    end
  end
  return ":-)" if happy > sad
  return ":-(" if happy < sad
  return ":-|"
end

text = [
  "03/01 I'm having a terrible horrible no good day.",
  "03/13 Yesterday was horrible, but today is great! Yay!",
  "04/02 Sad Panda. #terribleday",
  "04/15 Hello World, today is fabulous! #yay",
  "05/01 Great! Yay! Good! Yay! Happy. Happy.",
  "05/11 Yay, yay, yay! I'm having a awfuly great day."
]
# text = generate_text
# text.each do |t| puts t end

text.each do |entry|
  puts entry[0..5] + " " + analyze_mood(entry)
end

puts "It takes #{happy_days(text)} entries for 3 happy days to occur"
puts "The most common mood is #{overall_mood(text)}"
