//
//  UIViewTest_ViewController.m
//  InputHelper
//
//  Created by MaSong on 15/1/8.
//  Copyright (c) 2015年 MaSong. All rights reserved.
//

#import "UIViewTest_ViewController.h"

@interface UIViewTest_ViewController ()

@end

@implementation UIViewTest_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [inputHelper setupInputHelperForView:self.view withDismissType:InputHelperDismissTypeTapGusture];
}


@end
