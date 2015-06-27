//
//  ViewController.m
//  InputHelper
//
//  Created by MaSong on 14/10/30.
//  Copyright (c) 2014年 MaSong. All rights reserved.
//

#import "ViewController.h"
#import "InputHelper/InputHelper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]){
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    self.title = @"InputHelper Test";
}
- (IBAction)testUIViewAction:(id)sender {
    [self.navigationController pushViewController:[[UIViewTest_ViewController alloc]initWithNibName:@"UIViewTest_ViewController" bundle:nil] animated:YES];
}
- (IBAction)testUIScrollViewAction:(id)sender {
    [self.navigationController pushViewController:[[UIScrollViewTest_ViewController alloc]initWithNibName:@"UIScrollViewTest_ViewController" bundle:nil] animated:YES];
}


@end
