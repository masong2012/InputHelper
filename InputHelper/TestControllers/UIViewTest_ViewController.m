//
//  UIViewTest_ViewController.m
//  InputHelper
//
//  Created by MaSong on 15/1/8.
//  Copyright (c) 2015年 MaSong. All rights reserved.
//

#import "UIViewTest_ViewController.h"

@interface UIViewTest_ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation UIViewTest_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [inputHelper setupInputHelperForView:self.view withDismissType:InputHelperDismissTypeTapGusture];
    
    
    [inputHelper setupValidationType:ValidationTypeNumberInt forInputField:_ageTextField];
    
    [inputHelper limitTextLength:20 forInputField:_textView];
}


@end
