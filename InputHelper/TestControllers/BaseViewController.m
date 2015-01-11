//
//  BaseViewController.m
//  InputHelper
//
//  Created by MaSong on 15/1/11.
//  Copyright (c) 2015年 MaSong. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]){
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
}



@end
