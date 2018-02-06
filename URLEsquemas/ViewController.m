//
//  ViewController.m
//  URLEsquemas
//
//  Created by PROIMA on 6/2/18.
//  Copyright © 2018 Copanonga. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController
@synthesize webView;

- (void)viewDidLoad {
	
	NSLog(@"\nViewController");
	[super viewDidLoad];
	
	NSString *localURL = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
	NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:localURL]];
	[webView loadRequest:urlRequest];
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
}


@end
