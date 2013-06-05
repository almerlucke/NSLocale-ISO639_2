// NSLocale+ISO639_2.h
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

#import <Foundation/Foundation.h>

@interface NSLocale (ISO639_2)

- (NSString *)ISO639_2LanguageIdentifier;

@end
