//
//  LHHBlueButton.m
//  事件穿透
//
//  Created by leihuan on 16/7/11.
//  Copyright © 2016年 leihuan. All rights reserved.
//

#import "LHHBlueButton.h"

@interface LHHBlueButton ()

@property(nonatomic,weak) IBOutlet UIButton *redButton;


@end


@implementation LHHBlueButton


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    // 将触摸点的坐标系从蓝色按钮转换到红色按钮上
    CGPoint redButtonPoint = [self convertPoint:point toView:_redButton];
    
    // 如果redButton能接收到触摸事件，并且触摸点在子控件上，则找到了合适的view来接收事件，返回这个子控件
    UIView *view = [_redButton hitTest:redButtonPoint withEvent:event];
    
    if (view) {
        
        return view;
    }
    
    // 如果redButton不是合适的view，那就调用系统的方法，让系统去处理
    // 返回[super hitTest:point withEvent:event] 或者 self
//    return [super hitTest:point withEvent:event];
    return self;
    
}

@end
