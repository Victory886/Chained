//
//  SLObjc.m
//  Chained
//
//  Created by Terry on 2017/11/21.
//  Copyright © 2017年 Terry. All rights reserved.
//

#import "SLObjc.h"




@implementation SLObjc

+ (SLObjc *)it {

    return [[SLObjc alloc] init];
}

- (SLBlock_fre)fra {
    
    SLBlock_fre frame_block = ^(CGRect obj) {
        
        self.frame = obj;
        return self;
    };
    
    return frame_block;
}

- (SLBlock)txt {

    SLBlock f_block = ^(id obj) {
        
        self.text = obj;
        return self;
    };
    
    return f_block;
}

- (SLBlock_ft)tf {
    
    SLBlock_ft font_block = ^(double obj) {
    
        self.font = [UIFont systemFontOfSize:obj];
        return self;
    };
    
    return font_block;
}

- (SLBlock)tc {
    
    SLBlock txtCol_block = ^(id obj) {
        
        self.textColor = obj;
        return self;
    };
    
    return txtCol_block;
}

- (SLBlock)bc {
    
    SLBlock bgCol_block = ^(id obj) {
        
        self.backgroundColor = obj;
        return self;
    };
    
    return bgCol_block;
}

- (SLObjc *)ali_l {
    
    self.textAlignment = NSTextAlignmentLeft;
    return self;
}

- (SLObjc *)ali_r {
    
    self.textAlignment = NSTextAlignmentRight;
    return self;
}

- (SLObjc *)ali_c {
    
    self.textAlignment = NSTextAlignmentCenter;
    return self;
}

- (SLBlock)hid {
    
    SLBlock hid_block = ^(id obj) {
        
        NSNumber *isH = obj;
        self.hidden = [isH isEqual:@0] ? YES : NO;
        return self;
    };
    return hid_block;
}

- (SLBlock_ft)numL {
    
    SLBlock_ft numL_block = ^(double obj) {
        
        self.numberOfLines = obj;
        return self;
    };
    return numL_block;
}

- (SLBlock)show {
    
    SLBlock show = ^(id obj) {
        
        [obj addSubview:self];
        return self;
    };
    return show;
}

@end

