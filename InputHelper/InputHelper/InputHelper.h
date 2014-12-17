//
//  InputHelper.h
//  InputHelper
//
//  Created by MaSong on 13-11-11.
//  Copyright (c) 2013年 MaSong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^InputHelperDoneBlock)(id);
typedef void(^InputHelperValidationError)(id,NSString*);

typedef NS_ENUM(NSInteger, InputHelperDismissType) {
    
    InputHelperDismissTypeNone = 0,
    InputHelperDismissTypeCleanMaskView,
    InputHelperDismissTypeTapGusture
};

typedef NS_ENUM(NSInteger, ValidationType) {
    
    ValidationTypeNone = 0,       //no limit
    ValidationTypeNoWhiteSpace,   //no whitespace character
    ValidationTypeNumberInt,      //int number only
    ValidationTypePhone,          //phone only
    ValidationTypeAlphabetAndNumber,     //alphabet and number
};


@interface InputHelper : NSObject

+ (InputHelper *)sharedInputHelper;
- (void)dismissInputHelper;

//keyboard
- (void)setupInputHelperForView:(UIView *)view withDismissType:(InputHelperDismissType)dismissType;
- (void)setupInputHelperForView:(UIView *)view withDismissType:(InputHelperDismissType)dismissType doneBlock:(InputHelperDoneBlock)doneBlock;


//validation
- (void)setupValidationType:(ValidationType)type forInputField:(UIView *)inputField;
- (void)limitTextLength:(NSInteger)length forInputField:(UIView *)inputField;
@end

@interface NSString (InputHelper)
- (NSString *)trimmedString ;
@end

#define inputHelper [InputHelper sharedInputHelper]