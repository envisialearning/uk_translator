
require 'yaml'

module UkTranslator

  def self.data
    @@data ||= YAML.load_file(File.join(File.dirname(__FILE__), '..', 'share',
      'uk_to_us.yml'))
  end

  def self.us_to_uk(us_string)
    uk_string = us_string
    self.data.each do |us_word, uk_word|
      uk_string.gsub!(/#{'\b'+us_word+'\b'}/, uk_word)
      uk_string.gsub!(/#{'\b'+us_word.capitalize+'\b'}/, uk_word.capitalize)
      uk_string.gsub!(/#{'\b'+us_word.upcase+'\b'}/, uk_word.upcase)
    end
    uk_string
  end

  def self.uk_to_us(uk_string)
    us_string = uk_string
    self.data.each do |us_word, uk_word|
      us_string.gsub!(/#{'\b'+uk_word+'\b'}/, us_word)
      us_string.gsub!(/#{'\b'+uk_word.capitalize+'\b'}/, us_word.capitalize)
      us_string.gsub!(/#{'\b'+uk_word.upcase+'\b'}/, us_word.upcase)
    end
    us_string
  end

end