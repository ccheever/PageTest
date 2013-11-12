//
//  PageTestDataViewController.m
//  PageTest
//
//  Created by Charles Cheever on 11/12/13.
//  Copyright (c) 2013 Charles Cheever. All rights reserved.
//

#import "PageTestDataViewController.h"

@interface PageTestDataViewController ()

@end

@implementation PageTestDataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

@end
