// NSLocale+ISO639_2.m
//
// NSLocale category to get an ISO 639.2 language identifier
// Copyright (C) 2013  Almer Lucke
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.


#import "NSLocale+ISO639_2.h"

@implementation NSLocale (ISO639_2)

+ (NSDictionary *)ISO639_2Dictionary
{
    static NSDictionary *sISO639_2Dictionary = nil;
    
    if (!sISO639_2Dictionary) {
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"iso639_1_to_iso639_2" ofType:@"plist"];
        sISO639_2Dictionary = [NSDictionary dictionaryWithContentsOfFile:filePath];
    }
    
    return sISO639_2Dictionary;
}

- (NSString *)ISO639_2LanguageIdentifier
{
    NSString *languageCode = [self objectForKey:NSLocaleLanguageCode];
    NSString *ISO639_2String = [[[self class] ISO639_2Dictionary] objectForKey:languageCode];
    
    if (!ISO639_2String) return languageCode;
    
    return ISO639_2String;
}

@end
