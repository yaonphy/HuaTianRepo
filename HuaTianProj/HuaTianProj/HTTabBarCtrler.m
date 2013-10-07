//
//  HTTabBarCtrler.m
//  HuaTianProj
//
//  Created by yang on 13-10-5.
//  Copyright (c) 2013年 yaonphy. All rights reserved.
//

#import "HTTabBarCtrler.h"

static uint curIndex = 1;
enum
{
    HOME_BTN_TAG = 5001,
    MESSAGE_BTN_TAG,
    SQUARE_BTN_TAG,
    RELATION_BTN_TAG,
    PROFILE_BTN_TAG
};
@interface HTTabBarCtrler ()

@end

@implementation HTTabBarCtrler

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)tabBarBtnSelected:(id)sender
{
    UIButton * sendBtn = (UIButton *)sender;
    
    if ([sender tag] == curIndex) {
        return;
    }else
    {
        [sendBtn setEnabled:NO];
        if (curIndex != 1) {
            UIButton * lastBtn = (UIButton *)[[self view] viewWithTag:curIndex];
            [lastBtn setEnabled:YES];
        }
        curIndex = [sendBtn tag];
        
        
    }
}
-(void)viewWillAppear:(BOOL)animated
{
    CGRect curDeviceRect = __DEVICE_SCREEN__BOUNDS;
    [[self view] setBounds:curDeviceRect];
    
    for (uint idx = HOME_BTN_TAG; idx < HOME_BTN_TAG + __TABBAR_BTN__NUM; idx++) {
        UIButton * curBtn = (UIButton *)[[self view] viewWithTag:idx];
        switch (idx) {
            case HOME_BTN_TAG:
                [curBtn setImage:[UIImage imageNamed:@"tab_home_selected"] forState:UIControlStateDisabled];
                break;
            case MESSAGE_BTN_TAG:
                [curBtn setImage:[UIImage imageNamed:@"tab_msg_selected"] forState:UIControlStateDisabled];
                break;
            case SQUARE_BTN_TAG:
                [curBtn setImage:[UIImage imageNamed:@"tab_square_selected"] forState:UIControlStateDisabled];
                break;
            case RELATION_BTN_TAG:
                [curBtn setImage:[UIImage imageNamed:@"tab_relation_selected"] forState:UIControlStateDisabled];
                break;
            case PROFILE_BTN_TAG:
                [curBtn setImage:[UIImage imageNamed:@"tab_profile_selected"] forState:UIControlStateDisabled];
                break;
            default:
                break;
        }
        [curBtn addTarget:self action:@selector(tabBarBtnSelected:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    if (curIndex == 1) {
        UIButton * homeBtn = (UIButton *)[[self view] viewWithTag:HOME_BTN_TAG];
        [self tabBarBtnSelected:homeBtn];

        UIStoryboard * theStoryBoard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:Nil];
        UINavigationController * homeNavCtrler = [theStoryBoard instantiateViewControllerWithIdentifier:@"homeNavCtrler"];
        [[homeNavCtrler view] setTag:__TABBAR_BELOW_VIEW__TAG];
        
        [self addChildViewController:homeNavCtrler];
        [[self view] insertSubview:[homeNavCtrler view] belowSubview:[[self view] viewWithTag:__TABBAR_ABOVE_VIEW__TAG]];
    }
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
