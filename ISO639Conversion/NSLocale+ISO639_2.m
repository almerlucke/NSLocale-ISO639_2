//
//  NSLocale+ISO639_2.m
//  rco_ios_rco
//
//  Created by Almer Lucke on 6/4/13.
//  Copyright (c) 2013 aFrogleap. All rights reserved.
//

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
