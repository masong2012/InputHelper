/*
 *InputHelper
 *version 0.1.1
 
 *thank mario.
 
 *NOTE:   !!(0_0)!!
 InputHelper NOT support Autolayout Now!!
 
 *InputHelper WILL support UITableView and Autolayout. (-_-)
 
 2015-01-31
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define IS_IOS7_OR_LATER   ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)

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
/*
 email: @"^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$"
 id card: @"^([1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3})|([1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9]|X))$"
 phone: @"^1\\d{10}$"
 */
- (BOOL)isTextValidated:(NSString *)validation;
@end

#define inputHelper [InputHelper sharedInputHelper]