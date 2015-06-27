//
//  UIScrollViewTest_ViewController.m
//  InputHelper
//
//  Created by MaSong on 15/1/8.
//  Copyright (c) 2015年 MaSong. All rights reserved.
//

#import "UIScrollViewTest_ViewController.h"

@interface UIScrollViewTest_ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation UIScrollViewTest_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [inputHelper setupInputHelperForView:self.scrollView withDismissType:InputHelperDismissTypeTapGusture];
    
}



@end
