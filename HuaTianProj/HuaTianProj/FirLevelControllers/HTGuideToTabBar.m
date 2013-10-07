//
//  HTGuideToTabBar.m
//  HuaTianProj
//
//  Created by yang on 13-10-5.
//  Copyright (c) 2013年 yaonphy. All rights reserved.
//

#import "HTGuideToTabBar.h"

@implementation HTGuideToTabBar
-(void)perform
{

    UIViewController * sourceCtrler = [self sourceViewController];
    UIViewController * destCtrler = [self destinationViewController];
    UIViewController * parentCtrler = [sourceCtrler parentViewController];

    [[sourceCtrler view] removeFromSuperview];
    [sourceCtrler removeFromParentViewController];
    [[parentCtrler view] addSubview:[destCtrler view]];
    [parentCtrler addChildViewController:destCtrler];
    
}
@end
