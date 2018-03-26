//
//  SLPageControl.h
//  Chained
//
//  Created by Terry on 2018/3/7.
//  Copyright © 2018年 Terry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLPageControl : UIPageControl

+ (SLPageControl *)it;
- (SLPageControl * (^)(CGRect frame))frame;
- (SLPageControl * (^)(NSString *title))title;

@end
