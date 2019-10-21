# require modules here

def load_library(path)
  require "yaml"
  hash = YAML.load_file(path)
  new_hash = {'get_meaning' => {}, 'get_emoticon' => {}}
  hash.each do |key, values|
     new_hash['get_meaning'][values[1]] = key
     new_hash['get_emoticon'][values[0]] = values[1]
  end
  new_hash
  # code goes here
end

def get_japanese_emoticon(path,emoticon)
  hash = load_library(path)
  if hash["get_emoticon"].include?(emoticon)
    hash['get_emoticon'][emoticon]
  else
   return "Sorry this is not a known emoticon."
  end
  
  # code goes here
end

def get_english_meaning(japanese)
  # code goes here
end