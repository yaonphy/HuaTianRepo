//
//  HTGuideCtrler.m
//  HuaTianProj
//
//  Created by yang on 13-10-5.
//  Copyright (c) 2013年 yaonphy. All rights reserved.
//

#import "HTGuideCtrler.h"

#ifndef __GUID_IMAGE__NUM
#define __GUID_IMAGE__NUM  4
#endif
@interface HTGuideCtrler ()

@end

@implementation HTGuideCtrler

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization

    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated
{
    
    CGRect curDeviceRect = __DEVICE_SCREEN__BOUNDS;
    [[self view] setBounds:curDeviceRect];
    
    CGSize curDeviceSize = __DEVICE_SCREEN__SIZE;
    UIScrollView * theScrView = (UIScrollView *)[[self view]viewWithTag:1001];
    
    [theScrView setContentSize:CGSizeMake(curDeviceSize.width*__GUID_IMAGE__NUM,curDeviceSize.height)];
    
    for (int i = 0; i < __GUID_IMAGE__NUM; i++) {
        UIImage *theImage = [UIImage imageNamed:[NSString stringWithFormat:@"Guid_%d",i+1]];
        UIImageView * imageView_1 = [[UIImageView alloc]initWithFrame:CGRectMake(curDeviceSize.width*i,0,curDeviceSize.width,curDeviceSize.height)];
        [imageView_1 setImage:theImage];
        [theScrView addSubview:imageView_1];
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
