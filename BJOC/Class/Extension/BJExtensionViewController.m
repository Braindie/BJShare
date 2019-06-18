//
//  BJExtensionViewController.m
//  BJOC
//
//  Created by zhangwenjun on 2019/6/18.
//  Copyright © 2019 zcgt_ios_01. All rights reserved.
//

#import "BJExtensionViewController.h"
#import "BJExtensionViewController+BJExtension.h"
#import "BJExtensionViewController+BJCategory.h"

//这就是类扩展。。。
@interface BJExtensionViewController ()

//可以增加实例变量，默认是@private类型
@property (nonatomic, strong) UIColor *myColor;

//可以增加方法，如果为实现会报警告
- (void)printExtension;
@end



@implementation BJExtensionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.myColor = [UIColor redColor];
    self.view.backgroundColor = self.myColor;
    
    self.myName = @"BJ";
    NSLog(@"%@",self.myName);
    
    [self printExtension];
    
    [self categoryMethod];
}

- (void)printExtension{
    NSLog(@"扩展、这是一个私有方法");
}


@end
