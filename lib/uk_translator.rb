
require 'yaml'

module UkTranslator

  def self.data
    @@data ||= YAML.load_file(File.join(File.dirname(__FILE__), '..', 'share',
      'uk_to_us.yml'))
  end

  def self.us_to_uk(us_string)
    uk_string = us_string
    self.data.each do |us_word, uk_word|
      uk_string.gsub!(us_word, uk_word)
      uk_string.gsub!(us_word.capitalize, uk_word.capitalize)
      uk_string.gsub!(us_word.upcase, uk_word.upcase)
    end
    uk_string
  end

  def self.uk_to_us(uk_string)
    us_string = uk_string
    self.data.each do |us_word, uk_word|
      us_string.gsub!(uk_word, us_word)
      us_string.gsub!(uk_word.capitalize, us_word.capitalize)
      us_string.gsub!(uk_word.upcase, us_word.upcase)
    end
    us_string
  end

end