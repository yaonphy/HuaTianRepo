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

enum
{
    __FIRST_RUNNING__APP = 1111,
    __MORE_TIMES__ = 2222,
};
@interface HTViewController ()
@property (nonatomic,retain) HTGuideCtrler * guidCtrler;
@property (nonatomic,retain) HTTabBarCtrler * tabBarCtrler;
@end

@implementation HTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect curDeviceRect = __DEVICE_SCREEN__BOUNDS;
    [[self view] setBounds:curDeviceRect];
    
    NSUserDefaults * stdDefaults = __STANDARD_USER__DEFAULTS;
    NSInteger isFirstRunning = [stdDefaults integerForKey:@"isFirstRunning"];
    
    if (isFirstRunning == 0) {
        [self performSegueWithIdentifier:@"AddGuideCtrler" sender:self];
        [stdDefaults setInteger:__MORE_TIMES__ forKey:@"isFirstRunning"];
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
