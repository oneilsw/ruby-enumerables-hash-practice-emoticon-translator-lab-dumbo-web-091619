# require modules here
require 'pry' 
require "yaml"


def load_library(file)
  new_hash ={}
  yaml_file = YAML.load_file(file) 
  new_hash[:get_meaning] ={}
  new_hash[:get_emoticon] ={}
  yaml_file.each do|english,symbols|
    new_hash[:get_meaning][symbols[1]]= english 
    new_hash[:get_emoticon][symbols[0]]= symbols[1]
  end 
  new_hash 
end   

def get_japanese_emoticon(file,emoticon)
  translation =load_library(file)
  success = translation[:get_emoticon][emoticon]
  if !emoticon
  #binding.pry 
  
end

def get_english_meaning(file,emoticon)
  load_library(file)
end