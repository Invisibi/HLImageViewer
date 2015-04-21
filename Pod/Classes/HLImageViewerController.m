//
//  HLImageViewerController.m
//  Hedwig
//
//  Created by Ken Kuan on 4/30/14.
//  Copyright (c) 2014 invisibi. All rights reserved.
//

#import "HLImageScrollView.h"
#import "HLImageViewerController.h"
#import "HLModalViewControllerDelegate.h"

@interface HLImageViewerController ()<UIScrollViewDelegate>

@property (nonatomic) CGPoint pointToCenterAfterRotate;
@property (nonatomic) CGFloat scaleToRestoreAfterRotate;

@end

@implementation HLImageViewerController

+ (NSString *)screenName
{
    return @"image view";
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    HLImageScrollView *scrollView = [[HLImageScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:scrollView];
    self.scrollView = scrollView;
    [self.view sendSubviewToBack:self.scrollView];

    NSLog(@"View image at %@", self.imageURL);

    [self.scrollView setImageURL:self.imageURL];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
}

- (IBAction)close:(id)sender
{
    [self.delegate viewControllerTryToDismiss:self];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskAll;
}

@end
