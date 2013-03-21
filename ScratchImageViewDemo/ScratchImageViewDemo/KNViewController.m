//
//  KNViewController.m
//  ScratchImageViewDemo
//
//  Created by Kent Nguyen on 21/3/13.
//  Copyright (c) 2013 Kent Nguyen. All rights reserved.
//

#import "KNViewController.h"

@implementation KNViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Set delegate for tracking % scratched
    [scratchImage beginInteraction];
    scratchImage.imageMaskFilledDelegate = self;
}

- (void)imageMaskView:(ImageMaskView *)maskView clearPercentDidChanged:(float)clearPercent {
	NSLog(@"Cleared percentage: %.2f", clearPercent);
    if (clearPercent > 80) {
        [[[UIAlertView alloc] initWithTitle:@"You won!!!" message:@"80% cleared" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        [UIView animateWithDuration:1
                         animations:^{
                             scratchImage.alpha = 0;
                         }];
    }
}

@end
