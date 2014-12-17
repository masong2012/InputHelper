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
    
    //keyboard
    [inputHelper setupInputHelperForView:self.view withDismissType:InputHelperDismissTypeTapGusture doneBlock:^(id res){
        NSLog(@"done block,you can do something...");
    }];
   
   
    //validation
    [inputHelper setupValidationType:ValidationTypeNoWhiteSpace forInputField:_nameTextField];
    
    [inputHelper setupValidationType:ValidationTypeNumberInt forInputField:_ageTextField];
    
    [inputHelper setupValidationType:ValidationTypePhone forInputField:_phoneTextField];
    
    [inputHelper setupValidationType:ValidationTypeAlphabetAndNumber forInputField:_emailTextField];
    
    [inputHelper limitTextLength:10 forInputField:_textView];
    
}



@end
