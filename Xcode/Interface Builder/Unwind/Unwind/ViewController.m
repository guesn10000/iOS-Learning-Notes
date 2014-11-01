//
//  ViewController.m
//  Unwind
//
//  Created by Jymn_Chen on 14/10/31.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)vc_unwindMethod:(UIStoryboardSegue *)sender {
    NSLog(@"vc_unwind");
}

@end
