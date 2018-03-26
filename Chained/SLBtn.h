//
//  SLBtn.h
//  Chained
//
//  Created by Terry on 2018/3/9.
//  Copyright © 2018年 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLBtn : UIButton

typedef SLBtn *(^SLBtnBlock)(id obj);
typedef SLBtn *(^SLBtnBlock_fre)(CGRect obj);
typedef SLBtn *(^SLBtnBlock_ft)(double obj);
typedef SLBtn *(^SLBlock_int)(int obj);

/// 初始化
+ (SLBtn *)it;

/// 设置坐标
- (SLBtnBlock_fre)fra;

/// 内容
- (SLBtnBlock)txtN;

/// 内容 -- 高亮状态
- (SLBtnBlock)txtH;

/// 内容 -- 高亮状态
- (SLBtnBlock)txtS;

/// 居左
- (SLBlock_int)ali;

/// 字体大小
- (SLBtnBlock_ft)tf;

/// 字体颜色 正常状态
- (SLBtnBlock)tcN;

/// 字体颜色 高亮状态
- (SLBtnBlock)tcH;

/// 字体颜色 选中状态
- (SLBtnBlock)tcS;

/// 背景颜色
- (SLBtnBlock)bc;

/// 显示行数
- (SLBtnBlock_ft)numL;

/// 隐藏、显示  -- 非0为真
- (SLBtnBlock)hid;

/// 显示
- (SLBtnBlock)show;

@end
