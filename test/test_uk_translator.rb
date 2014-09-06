require 'test/unit'
require File.join(File.dirname(__FILE__), '..', 'lib', 'uk_translator')

class TestUkTranslator < Test::Unit::TestCase
  def test_us_to_uk
    assert_equal "Prioritise colour CUSTOMISATIONS",
      UkTranslator.us_to_uk("Prioritize color CUSTOMIZATIONS")
  end

  def test_uk_to_us
    assert_equal "Prioritize color CUSTOMIZATIONS",
      UkTranslator.uk_to_us("Prioritise colour CUSTOMISATIONS")
  end
end