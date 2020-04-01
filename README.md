# SSJUIAlertController
给UIAlertController扩展下类，方便使用

## ///使用案例     初始化方法 </br>
//self代表调用者Viewcontroller </br>
UIAlertController *alert = [UIAlertController initWithTitle:@"天气" message:@"今天天气真好🌞" actionTitles:@[@"没错",@"不是这样的"] actionBlock:^(UIAlertAction * _Nonnull action) { </br>
    NSLog(@"点击了:%@",action.title); </br>
}]; </br>
[self presentViewController:alert animated:YES completion:nil]; </br>



## ///使用案例     初始化方法 带UIViewController</br>
//self代表调用者Viewcontroller </br>
[UIAlertController initWithTitle:@"测试带uiviewcontroller" message:@"今天天气真好🌞" actionTitles:@[@"没错",@"不是这样的"] controller:self actionBlock:^(UIAlertAction * _Nonnull action) { </br>
    NSLog(@"点击了:%@",action.title); </br>
}]; 
