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

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [[NSLocale currentLocale] ISO639_2LanguageIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
