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
    
    //NSString *fullURL = [NSString stringWithFormat: @"http://cdc03.com/dev/test-flip.html?id=%@", [self.dataObject description]];
    //NSString *fullURL = [NSString stringWithFormat:@"http://cdc03.com/dev/fake-station/%@.html", [self.dataObject description]];
    NSString *fullURL = [NSString stringWithFormat:@"http://192.168.1.9:8080/#%@", [self.dataObject description]];
    //NSString *fullURL = [NSString stringWithFormat:@"data:text/html,<h1>%@</h1>", [self.dataObject description]];

    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:requestObj];
    //[self.webView loadHTMLString:[NSString stringWithFormat:@"<h1>%@</h1>", [self.dataObject description]] baseURL:nil];

}

@end
