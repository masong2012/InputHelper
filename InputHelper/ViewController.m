//
//  ViewController.m
//  InputHelper
//
//  Created by MaSong on 14/10/30.
//  Copyright (c) 2014年 MaSong. All rights reserved.
//

#import "ViewController.h"
#import "InputHelper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [inputHelper setupInputHelperForView:self.view withDismissType:InputHelperDismissTypeTapGusture];
    
}



@end
