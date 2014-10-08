//
//  ViewController.m
//  UIKit-UIDataDetector
//
//  Created by 王钱钧 on 14-10-8.
//  Copyright (c) 2014年 王钱钧. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UITextView *myTextView;

@end

@implementation ViewController

#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [self initView];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - private method

- (void)initView
{
    
    NSString *telNumber = @"+13944567788\n";
    NSString *webAddress = @"http://www.google.com\n";
    NSString *emailAddress = @"arthur.wang@yoho.cn\n";
    
    _myTextView = [[UITextView alloc]initWithFrame:self.view.frame];
    _myTextView.text = [@"Data detector:\n" stringByAppendingString:[[telNumber stringByAppendingString:webAddress] stringByAppendingString:emailAddress]];
    _myTextView.dataDetectorTypes = UIDataDetectorTypeAll;
    _myTextView.editable = NO;
    
    [self.view addSubview:_myTextView];
}
@end
