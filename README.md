uk_translator
=============

Translate strings between US and UK english spelling using a dictionary of almost 1800 words. Pull requests are accepted if any missing words are found.

US to UK:

```ruby
UkTranslator.us_to_uk("Prioritize your COLOR customizations")
 => "Prioritise your COLOUR customisations"
```

UK to US:

```ruby
UkTranslator.uk_to_us("Prioritise your COLOUR customisations")
 => "Prioritize your COLOR customizations"
```

Limitations:
------------
It will only translate words that are:

 * all lowercase
 * Properly Capitalized
 * ALL UPPERCASE
