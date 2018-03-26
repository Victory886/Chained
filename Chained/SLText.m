//
//  SLText.m
//  Chained
//
//  Created by Terry on 2018/3/9.
//  Copyright © 2018年 Terry. All rights reserved.
//

#import "SLText.h"

@implementation SLText

/// 初始化
+ (SLText *)it {
    
    return [[SLText alloc] init];
}

/// 设置坐标
- (SLBlock_fre)fra {
    
    SLBlock_fre black_frame = ^(CGRect obj) {
        
        self.frame = obj;
        return self;
    };
    return black_frame;
}

/// 内容
- (SLBlock)txt {
    
    SLBlock black_txt = ^(id obj) {
        
        self.text = obj;
        return self;
    };
    return black_txt;
}

/// 居左
- (SLText *)ali_l {
    
    self.textAlignment = NSTextAlignmentLeft;
    return self;
}

/// 居右
- (SLText *)ali_r {
    
    self.textAlignment = NSTextAlignmentRight;
    return self;
}

/// 居中
- (SLText *)ali_c {
    
    self.textAlignment = NSTextAlignmentCenter;
    return self;
}

/// 字体大小
- (SLBlock_ft)tf {
    
    SLBlock_ft black_font = ^(double obj) {
        
        self.font = [UIFont systemFontOfSize:obj];
        return self;
    };
    return black_font;
}

/// txt 提示文字
- (SLBlock)pla_txt {
    
    SLBlock black_pla_txt = ^(id obj) {
        self.placeholder = obj;
        return self;
    };
    return black_pla_txt;
}

/// 字体颜色
- (SLBlock)tc {
    
    SLBlock black_tc = ^(id obj) {
        
        self.textColor = obj;
        return self;
    };
    
    return black_tc;
}

/// 背景颜色
- (SLBlock)bc {
    
    SLBlock black_bc = ^(id obj) {
      
        self.backgroundColor = obj;
        return self;
    };
    return black_bc;
}


/// 隐藏、显示  -- 非0为真
- (SLBlock)hid {
    
    SLBlock hid_block = ^(id obj) {
        
        NSNumber *isH = obj;
        self.hidden = [isH isEqual:@0] ? YES : NO;
        return self;
    };
    return hid_block;
}

/// 显示
- (SLBlock)show {
    
    SLBlock show = ^(id obj) {
        
        [obj addSubview:self];
        return self;
    };
    return show;
}

@end
