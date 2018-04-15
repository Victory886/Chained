//
//  SLBtn.m
//  Chained
//
//  Created by Terry on 2018/3/9.
//  Copyright © 2018年 Terry. All rights reserved.
//

#import "SLBtn.h"

@implementation SLBtn

/// 初始化
+ (SLBtn *)it {
    
    return [SLBtn buttonWithType:(UIButtonTypeCustom)];

    //
    
}



/// 设置坐标
- (SLBtnBlock_fre)fra {
    
    SLBtnBlock_fre frame_block = ^(CGRect obj) {
        
        self.frame = obj;
        return self;
    };
    
    return frame_block;
}

/// 内容 -- 正常状态
- (SLBtnBlock)txtN {
    
    SLBtnBlock f_block = ^(id obj) {
        
        [self setTitle:obj forState:(UIControlStateNormal)];
        return self;
    };
    
    return f_block;
}

/// 内容 -- 高亮状态
- (SLBtnBlock)txtH {
    
    SLBtnBlock f_block = ^(id obj) {
        
        [self setTitle:obj forState:(UIControlStateHighlighted)];
        return self;
    };
    
    return f_block;
}


/// 内容 -- 高亮状态
- (SLBtnBlock)txtS {
    
    SLBtnBlock f_block = ^(id obj) {
        
        [self setTitle:obj forState:(UIControlStateSelected)];
        return self;
    };
    
    return f_block;
}


/// 字体大小
- (SLBtnBlock_ft)tf {
    
    SLBtnBlock_ft font_block = ^(double obj) {
        
        self.titleLabel.font = [UIFont systemFontOfSize:obj];
        return self;
    };
    
    return font_block;
}

/// 字体颜色
- (SLBtnBlock)tcN {
    
    SLBtnBlock txtCol_block = ^(id obj) {
        
        [self setTitleColor:obj forState:(UIControlStateNormal)];
        return self;
    };
    
    return txtCol_block;
}

/// 字体颜色 高亮状态
- (SLBtnBlock)tcH {
    
    SLBtnBlock txtCol_block = ^(id obj) {
        
        [self setTitleColor:obj forState:(UIControlStateHighlighted)];
        return self;
    };
    
    return txtCol_block;
}

/// 字体颜色 选中状态
- (SLBtnBlock)tcS {
    
    SLBtnBlock txtCol_block = ^(id obj) {
        
        [self setTitleColor:obj forState:(UIControlStateSelected)];
        return self;
    };
    
    return txtCol_block;
}

/// 背景颜色
- (SLBtnBlock)bc {
    
    SLBtnBlock bgCol_block = ^(id obj) {
        
        self.backgroundColor = obj;
        return self;
    };
    
    return bgCol_block;
}

/// 显示行数
- (SLBtnBlock_ft)numL {
    
    SLBtnBlock_ft numL_block = ^(double obj) {
        
        self.titleLabel.numberOfLines = obj;
        return self;
    };
    return numL_block;
}

/// 隐藏、显示  -- 非0为真
- (SLBtnBlock)hid {
    
    SLBtnBlock hid_block = ^(id obj) {
        
        NSNumber *isH = obj;
        self.hidden = [isH isEqual:@0] ? YES : NO;
        return self;
    };
    return hid_block;
}

/// 显示
- (SLBtnBlock)show {
    
    SLBtnBlock show = ^(id obj) {
        
        [obj addSubview:self];
        return self;
    };
    return show;
}


/// 居左
- (SLBlock_int)ali {
    
    SLBlock_int ali_block = ^(int obj) {
        
        if (obj == 1)
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        else if (obj == 2)
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        else if (obj == 0)
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        return self;
    };
    
    return ali_block;
}
@end
