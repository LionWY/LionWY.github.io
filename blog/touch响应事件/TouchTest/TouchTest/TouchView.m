//
//  TouchView.m
//  TouchTest
//
//  Created by Lion Liu on 2017/5/12.
//  Copyright © 2017年 Lion Liu. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"=====%@", [self class]);
    
    
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
/*
    方法 1
 */
//    当前 point 对应于 self.bView 的位置
    CGPoint p = [self convertPoint:point toView:self.bView];
//    是否在 bView 区域内
    if (CGRectContainsPoint(self.bView.bounds, p)) {
        return NO;
    }

    BOOL bl = [super pointInside:point withEvent:event];
    return bl;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
/*
    方法 2
 */
//    CGPoint p = [self convertPoint:point toView:self.bView];
//    如果 self.bView 可以响应这个点，就让 bView 来处理这个事件
//    if([self.bView pointInside:p withEvent:event]) {
//        return self.bView;
//    }
//    
    
    
    
    UIView *vi = [super hitTest:point withEvent:event];
    return vi;
}

@end
