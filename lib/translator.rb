require 'yaml'

file_path = './lib/emoticons.yml'

def load_library(file_path)
  data = YAML.load_file(file_path)
  useable_data = {}
  useable_data["get_emoticon"] = {}
  useable_data["get_meaning"] = {}
  data.each do |emotion, values|
      useable_data["get_emoticon"][values[0]] = values[1]
      useable_data["get_meaning"][values[1]] = emotion
  end
  useable_data
end


def get_japanese_emoticon(file_path, emoticon)
    useable_data = load_library(file_path)
    useable_data["get_emoticon"].key?(emoticon) ? useable_data["get_emoticon"][emoticon] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
   useable_data = load_library(file_path)
     useable_data["get_meaning"].key?(emoticon) ? useable_data["get_meaning"][emoticon] : "Sorry, that emoticon was not found"
end

