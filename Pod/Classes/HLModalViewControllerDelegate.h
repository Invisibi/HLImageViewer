//
//  HLModalViewControllerDelegate.h
//  Hedwig
//
//  Created by Ken Kuan on 4/16/14.
//  Copyright (c) 2014 invisibi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HLModalViewControllerDelegate <NSObject>

- (void)viewControllerTryToDismiss:(UIViewController *)viewController;

@end
