//
//  ViewController.m
//  ISO639Conversion
//
//  Created by Almer Lucke on 6/5/13.
//  Copyright (c) 2013 Farcoding. All rights reserved.
//

#import "ViewController.h"
#import "NSLocale+ISO639_2.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UILabel *ISO639_1Label;
@property (nonatomic, weak) IBOutlet UILabel *ISO639_2Label;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *ISO639_1LanguageCode = [[NSLocale currentLocale] objectForKey:NSLocaleLanguageCode];
    NSString *ISO639_2LanguageCode = [[NSLocale currentLocale] ISO639_2LanguageCode];
    
    self.ISO639_1Label.text = [NSString stringWithFormat:@"ISO639.1 = %@", ISO639_1LanguageCode];
    self.ISO639_2Label.text = [NSString stringWithFormat:@"ISO639.2 = %@", ISO639_2LanguageCode];
}

@end
