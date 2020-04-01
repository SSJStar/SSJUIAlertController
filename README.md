# SSJUIAlertController
给UIAlertController扩展下类，方便使用

///使用案例     初始化方法
//self代表调用者Viewcontroller
UIAlertController *alert = [UIAlertController initWithTitle:@"天气" message:@"今天天气真好🌞" actionTitles:@[@"没错",@"不是这样的"] actionBlock:^(UIAlertAction * _Nonnull action) {
    NSLog(@"点击了:%@",action.title);
}];
[self presentViewController:alert animated:YES completion:nil];



///使用案例     初始化方法 带UIViewController
//self代表调用者Viewcontroller
[UIAlertController initWithTitle:@"测试带uiviewcontroller" message:@"今天天气真好🌞" actionTitles:@[@"没错",@"不是这样的"] controller:self actionBlock:^(UIAlertAction * _Nonnull action) {
    NSLog(@"点击了:%@",action.title);
}];
