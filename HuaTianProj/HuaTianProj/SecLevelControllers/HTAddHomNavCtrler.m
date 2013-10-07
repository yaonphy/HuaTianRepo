//
//  HTAddHomNavCtrler.m
//  HuaTianProj
//
//  Created by yang on 13-10-7.
//  Copyright (c) 2013年 yaonphy. All rights reserved.
//

#import "HTAddHomNavCtrler.h"

@implementation HTAddHomNavCtrler
-(void)perform
{
    UIViewController * sourceCtrler = [self sourceViewController];
    UIViewController * destCtrler = [self destinationViewController];
    
    UIView *myselfView = [sourceCtrler view];
    
    UIView *belowView = [myselfView viewWithTag:__TABBAR_BELOW_VIEW__TAG];
    UIView *aboveView = [myselfView viewWithTag:__TABBAR_ABOVE_VIEW__TAG];
    
    if (belowView) {
        for (UIViewController * subCtr in [sourceCtrler childViewControllers]) {
            [subCtr removeFromParentViewController];
        }
        [belowView removeFromSuperview];
        UIView * newBelowView = [destCtrler view];
        [newBelowView setTag:__TABBAR_BELOW_VIEW__TAG];
        [sourceCtrler addChildViewController:destCtrler];
        [myselfView insertSubview:[destCtrler view] belowSubview:aboveView];
    }
    
}
@end
