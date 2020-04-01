//
//  UIAlertController+SSJCategory.h
//  LLAlertViewDemo
//
//  Created by 金汕汕 on 2020/4/1.
//  Copyright © 2020 LOLITA0164. All rights reserved.
//

#import <UIKit/UIKit.h>


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIAlertController (SSJCategory)

///为了简化代码 这里定义了一个Block类型
typedef void (^ActionBlock)(UIAlertAction * _Nonnull action);

#pragma mark -- 方法

/// 初始化方法
/// @param title 要展示的标题
/// @param message 要展示的内容
/// @param actionTitles 要展示的字符串按钮文字数组
/// @param actionBlock 点击按钮返回对应的UIAlertAction
+ (instancetype)initWithTitle:(NSString *)title message:(nullable NSString *)message actionTitles:(NSArray <NSString *>*)actionTitles actionBlock:(ActionBlock)actionBlock;


/// 初始化方法 带UIViewController
/// @param title 要展示的标题
/// @param message 要展示的内容
/// @param actionTitles 要展示的字符串按钮文字数组
/// @param actionBlock 点击按钮返回对应的UIAlertAction
/// @param ctrl 需要绑定的UIViewController
+ (instancetype)initWithTitle:(NSString *)title message:(nullable NSString *)message actionTitles:(NSArray <NSString *>*)actionTitles  controller:(UIViewController *)ctrl actionBlock:(ActionBlock)actionBlock;



@end

NS_ASSUME_NONNULL_END



///使用案例     初始化方法
//self代表调用者Viewcontroller
//UIAlertController *alert = [UIAlertController initWithTitle:@"天气" message:@"今天天气真好🌞" actionTitles:@[@"没错",@"不是这样的"] actionBlock:^(UIAlertAction * _Nonnull action) {
//    NSLog(@"点击了:%@",action.title);
//}];
////  3.显示alertController
//[self presentViewController:alert animated:YES completion:nil];


///使用案例     初始化方法 带UIViewController
//self代表调用者Viewcontroller
//[UIAlertController initWithTitle:@"测试带uiviewcontroller" message:@"今天天气真好🌞" actionTitles:@[@"没错",@"不是这样的"] controller:self actionBlock:^(UIAlertAction * _Nonnull action) {
//    NSLog(@"点击了:%@",action.title);
//}];

