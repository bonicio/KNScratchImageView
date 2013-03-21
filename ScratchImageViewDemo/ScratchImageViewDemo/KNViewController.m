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

    // Here you can configure the options before allowing scratch
    scratchImage.radius = 40;
    [scratchImage beginInteraction];
    scratchImage.imageMaskFilledDelegate = self;
}

- (void)imageMaskView:(ImageMaskView *)maskView clearPercentDidChanged:(float)clearPercent {
	NSLog(@"Cleared percentage: %.2f", clearPercent);

    // Detect minimum percentage scratched
    if (clearPercent > 50) {
        [UIView animateWithDuration:2
                         animations:^{
                             scratchImage.userInteractionEnabled = NO;
                             scratchImage.alpha = 0;
                             scratchImage.imageMaskFilledDelegate = nil;
                         }
                         completion:^(BOOL finished) {
                             [[[UIAlertView alloc] initWithTitle:@"You won!!!"
                                                         message:[NSString stringWithFormat:@"%.0f cleared", clearPercent]
                                                        delegate:nil
                                               cancelButtonTitle:@"OK"
                                               otherButtonTitles:nil] show];
                         }];
    }
}

@end
