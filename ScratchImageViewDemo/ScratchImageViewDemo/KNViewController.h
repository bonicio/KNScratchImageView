//
//  KNViewController.h
//  ScratchImageViewDemo
//
//  Created by Kent Nguyen on 21/3/13.
//  Copyright (c) 2013 Kent Nguyen. All rights reserved.
//

#import "ImageMaskView.h"

@interface KNViewController : UIViewController <ImageMaskFilledDelegate> {
    __weak IBOutlet ImageMaskView *scratchImage;
    __weak IBOutlet ImageMaskView *wonImage;
}

@end
