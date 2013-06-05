### NSLocale category to get an ISO639.2 language identifier code

Example usage: 

	[[NSLocale currentLocale] ISO639_2LanguageIdentifier];
	
This category first gets the value for the NSLocaleLanguageCode key from an NSLocale object 
and then uses a plist to lookup the corresponding ISO 639.2 language code.

If a language code can not be found, the result of NSLocaleLanguageCode is returned directly.

Don't forget to include the iso639\_1\_to\_iso639\_2.plist to your bundle otherwise the category won't work.

The plist is created following this [website](http://www.loc.gov/standards/iso639-2/php/code_list.php)