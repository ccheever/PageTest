//
//  PageTestModelController.h
//  PageTest
//
//  Created by Charles Cheever on 11/12/13.
//  Copyright (c) 2013 Charles Cheever. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PageTestDataViewController;

@interface PageTestModelController : NSObject <UIPageViewControllerDataSource>

- (PageTestDataViewController *)viewControllerAtIndex:(NSUInteger)index storyboard:(UIStoryboard *)storyboard;
- (NSUInteger)indexOfViewController:(PageTestDataViewController *)viewController;

@end
