//
//  SLText.h
//  Chained
//
//  Created by Terry on 2018/3/9.
//  Copyright © 2018年 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLText : UITextField

typedef SLText *(^SLBlock)(id obj);
typedef SLText *(^SLBlock_fre)(CGRect obj);
typedef SLText *(^SLBlock_ft) (double obj);

/// 初始化
+ (SLText *)it;

/// 设置坐标
- (SLBlock_fre)fra;

/// 内容
- (SLBlock)txt;

/// 居左
- (SLText *)ali_l;

/// 居右
- (SLText *)ali_r;

/// 居中
- (SLText *)ali_c;

/// 字体大小
- (SLBlock_ft)tf;

/// txt 提示文字
- (SLBlock)pla_txt;

/// 字体颜色
- (SLBlock)tc;

/// 背景颜色
- (SLBlock)bc;

/// 隐藏、显示  -- 非0为真
- (SLBlock)hid;

/// 显示
- (SLBlock)show;


@end
