//
//  HLViewController.m
//  HLImageViewer
//
//  Created by Egist Li on 04/21/2015.
//  Copyright (c) 2014 Egist Li. All rights reserved.
//

#import "HLViewController.h"
#import <HLImageViewer/HLImageViewerController.h>

@interface HLViewController ()

@end

@implementation HLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)showImageViewer {
    HLImageViewerController *imageViewerController = [[HLImageViewerController alloc] init];
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"lion" ofType:@"jpg"];
    [imageViewerController setImageURL:[NSURL fileURLWithPath:imagePath]];

    [self presentViewController:imageViewerController animated:YES completion:nil];
}

@end
