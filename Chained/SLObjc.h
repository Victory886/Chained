//
//  SLObjc.h
//  Chained
//
//  Created by Terry on 2017/11/21.
//  Copyright © 2017年 Terry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SLObjc.h"

@class SLBtn;
@interface SLObjc : UILabel

typedef SLObjc *(^SLBlock)(id obj);
typedef SLObjc *(^SLBlock_fre)(CGRect obj);
typedef SLObjc *(^SLBlock_ft)(double obj);


/// 初始化
+ (SLObjc *)it;

/// 设置坐标
- (SLBlock_fre)fra;

/// 内容
- (SLBlock)txt;

/// 居左
- (SLObjc *)ali_l;

/// 居右
- (SLObjc *)ali_r;

/// 居中
- (SLObjc *)ali_c;

/// 字体大小
- (SLBlock_ft)tf;

/// 字体颜色
- (SLBlock)tc;

/// 背景颜色
- (SLBlock)bc;

/// 显示行数
- (SLBlock_ft)numL;

/// 隐藏、显示  -- 非0为真
- (SLBlock)hid;

/// 显示
- (SLBlock)show;

@end


