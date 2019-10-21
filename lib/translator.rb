# require modules here

def load_library(path)
  require "yaml"
  hash = YAML.load_file(path)
  new_hash = {get_meaning: {}. get_emoticon: {}}
  puts hash
  # code goes here
end

def get_japanese_emoticon(english)
  # code goes here
end

def get_english_meaning(japanese)
  # code goes here
end