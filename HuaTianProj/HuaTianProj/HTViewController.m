//
//  HTViewController.m
//  HuaTianProj
//
//  Created by yang on 13-10-5.
//  Copyright (c) 2013年 yaonphy. All rights reserved.
//

#import "HTViewController.h"
#import "HTGuideCtrler.h"
#import "HTTabBarCtrler.h"

static BOOL isFirstRunning = YES;

@interface HTViewController ()
@property (nonatomic,retain) HTGuideCtrler * guidCtrler;
@property (nonatomic,retain) HTTabBarCtrler * tabBarCtrler;
@end

@implementation HTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    CGRect curDeviceRect = [[UIScreen mainScreen]bounds];
//    [[self view] setBounds:curDeviceRect];
	// Do any additional setup after loading the view, typically from a nib.
    if (isFirstRunning) {
        [self performSegueWithIdentifier:@"AddGuideCtrler" sender:self];
        isFirstRunning = NO;
    }else
    {
        [self performSegueWithIdentifier:@"addTabBarCtrler" sender:self];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
