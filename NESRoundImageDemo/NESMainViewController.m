//
//  NESMainViewController.m
//  NESRoundImageDemo
//
//  Created by Nestor on 15/1/28.
//  Copyright (c) 2015年 NesTalk. All rights reserved.
//

#import "NESMainViewController.h"
#import "NESRoundImage.h"

@interface NESMainViewController ()


@end

@implementation NESMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#define USE_AUTOLAYOUT 1

#if USE_AUTOLAYOUT
    NESRoundImage *image = [[NESRoundImage alloc] initWithImage:[UIImage imageNamed:@"qrcode"]];
#else
    NESRoundImage *image = [[NESRoundImage alloc] initWithFrame:CGRectMake(10, 30, 300, 200) image:[UIImage imageNamed:@"qrcode"]];
#endif
    
    [self.view addSubview:image];

#if USE_AUTOLAYOUT
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|-10-[image]-10-|" options:0 metrics:0 views:NSDictionaryOfVariableBindings(image)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-30-[image]" options:0 metrics:0 views:NSDictionaryOfVariableBindings(image)]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:image attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:image attribute:NSLayoutAttributeHeight multiplier:1 constant:0]];
#endif
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
