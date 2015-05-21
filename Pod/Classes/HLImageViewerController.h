//
//  HLImageViewerController.h
//  Hedwig
//
//  Created by Ken Kuan on 4/30/14.
//  Copyright (c) 2014 invisibi. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HLModalViewControllerDelegate;
@class HLImageScrollView;

@interface HLImageViewerController : UIViewController

@property (nonatomic) NSURL *imageURL;
@property (weak, nonatomic) id<HLModalViewControllerDelegate> delegate;
@property (weak, nonatomic) HLImageScrollView *scrollView;
@property (nonatomic) UIImageView *zoomView;

- (IBAction)close:(id)sender;

@end
