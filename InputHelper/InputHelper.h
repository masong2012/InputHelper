//
//  InputHelper.h
//  InputHelper
//
//  Created by MaSong on 13-11-11.
//  Copyright (c) 2013年 MaSong. All rights reserved.
//

/* 键盘出现时自动调整输入框坐标 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, InputHelperDismissType) {
    
    InputHelperDismissTypeNone = 0,
    InputHelperDismissTypeCleanMaskView,
    InputHelperDismissTypeTapGusture
};

@interface InputHelper : NSObject

+ (InputHelper *)sharedInputHelper;
- (void)dismissInputHelper;
- (void)setupInputHelperForView:(UIView *)view withDismissType:(InputHelperDismissType)dismissType;


@end


#define inputHelper [InputHelper sharedInputHelper]