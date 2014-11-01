//
//  ManualALViewController.m
//  AutoLayoutDemo
//
//  Created by Jymn_Chen on 14-10-5.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "ManualALViewController.h"

@interface ManualALViewController ()

@property (strong, nonatomic) UIButton *button;

@end

@implementation ManualALViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    _button.frame = CGRectMake(0, 0, 100, 44);
    _button.backgroundColor = [UIColor greenColor];
    [_button setTitle:@"Button" forState:UIControlStateNormal];
    [self.view addSubview:_button];
}

- (void)updateViewConstraints {
    NSLog(@"1");
    
    [self.view setTranslatesAutoresizingMaskIntoConstraints:NO];
    CGFloat padding = 44.0;
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:_button
                                                                  attribute:NSLayoutAttributeBottom
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeBottom
                                                                 multiplier:1.0
                                                                   constant:-padding];
    [self.view addConstraint:constraint];
//    [self.view setNeedsUpdateConstraints];
    
    [super updateViewConstraints];
}

@end
