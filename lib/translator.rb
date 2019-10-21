# require modules here

def load_library(path)
  require "yaml"
  hash = YAML.load_file(path)
  new_hash = {get_meaning: {}, get_emoticon: {}}
  hash.each do |key, values|
    key.each do |value|
      new_hash[get_meaning][value[0]] = key
    end
  end
  new_hash
  # code goes here
end

def get_japanese_emoticon(english)
  # code goes here
end

def get_english_meaning(japanese)
  # code goes here
end