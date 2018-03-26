//
//  ViewController.m
//  Chained
//
//  Created by Terry on 2017/11/21.
//  Copyright © 2017年 Terry. All rights reserved.
//

#import "ViewController.h"
#import "SLObjc.h"
#import "SLColor.h"
#import "SLPageControl.h"
#import "SLBtn.h"

/// 渐变颜色
#define kJianBianColors  @[(id)[UIColor colorWithRed:16.0f/255.0f green:90.0f/255.0f blue:239.0f/255.0f alpha:1.0f].CGColor,\
(id)[UIColor colorWithRed:19.0f/255.0f green:152.0f/255.0f blue:255.0f/255.0f alpha:1.0f].CGColor]

/// 渐变影子颜色
#define kJB_ShadowColor [UIColor colorWithRed:16.0f/255.0f green:86.0f/255.0f blue:238.0f/255.0f alpha:0.15f]

#define kCol [SLColor it]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    CGRect frame = CGRectMake(100, 100, 100, 100);
    SLObjc *lab = [SLObjc it];
    lab.fra(frame).bc(kCol.red).txt(@"测试").
        tc(kCol.yel).tf(14).ali_l.show(self.view).hid(@1).numL(0);
    lab.fra(frame).bc(kCol.red);

    CGRect bf = CGRectMake(100, 220, 100, 100);
    SLBtn *btn = [SLBtn it];
    btn.frame = bf;
    [btn setTitle:@"1321" forState:(UIControlStateNormal)];
    [self.view addSubview:btn];
    btn.fra(bf).txtN(@"按钮").tf(38).ali(2).show(self.view);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
