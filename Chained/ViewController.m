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

#define kCol [SLColor it]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

    CGRect frame = CGRectMake(100, 100, 100, 100);
    SLObjc *lab = [SLObjc it];
    lab.fra(frame).bc(kCol.red).txt(@"发发少的发少的发发少少的发少的发发少少的发少的发发少的发第三方").
        tc(kCol.yel).tf(14).ali_r.show(self.view).hid(@1).numL(0);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
