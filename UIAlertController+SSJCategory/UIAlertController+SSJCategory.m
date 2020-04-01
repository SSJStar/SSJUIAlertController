//
//  UIAlertController+SSJCategory.m
//  LLAlertViewDemo
//
//  Created by 金汕汕 on 2020/4/1.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

#import "UIAlertController+SSJCategory.h"

#import <UIKit/UIKit.h>


@implementation UIAlertController (SSJCategory)

+ (instancetype)initWithTitle:(NSString *)title message:(nullable NSString *)message actionTitles:(NSArray <NSString *>*)actionTitles actionBlock:(ActionBlock)actionBlock{
    
    // 1.实例化alertController
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];
    // 2.实例化按钮
    for (NSString *actionTitle in actionTitles) {
        UIAlertAction *action = [UIAlertAction actionWithTitle:actionTitle
                                                         style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * _Nonnull action) {
            // 点击按钮，调用此block
            NSLog(@"Button Click");
            if(actionBlock){
                actionBlock(action);
            }
        }];
        [alert addAction:action];
    }
    
    return alert;
}


/// 初始化方法
/// @param title 要展示的标题
/// @param message 要展示的内容
/// @param actionTitles 要展示的字符串按钮文字数组
/// @param actionBlock 点击按钮返回对应的UIAlertAction
/// @param ctrl 需要绑定的UIViewController
+ (instancetype)initWithTitle:(NSString *)title message:(nullable NSString *)message actionTitles:(NSArray <NSString *>*)actionTitles  controller:(UIViewController *)ctrl actionBlock:(ActionBlock)actionBlock{
    // 1.实例化alertController
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];
    // 2.实例化按钮
    for (NSString *actionTitle in actionTitles) {
        UIAlertAction *action = [UIAlertAction actionWithTitle:actionTitle
                                                         style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * _Nonnull action) {
            // 点击按钮，调用此block
            NSLog(@"Button Click");
            if(actionBlock){
                actionBlock(action);
            }
        }];
        [alert addAction:action];
    }
    //  3.显示alertController
    [ctrl presentViewController:alert animated:YES completion:nil];
    
    return alert;
}
@end
