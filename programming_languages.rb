require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, description|
    description.each do |language, type|
      binding.pry
      if new_hash.has_key?(language)
      new_hash[language][:style] << style
    else
      new_hash[language] = type
      new_hash[language][:style] = [style]
      end
    end
  end
  new_hash
end
