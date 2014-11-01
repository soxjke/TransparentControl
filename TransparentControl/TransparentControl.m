//
//  TransparentControl.m
//  TransparentControl
//
//  Created by Petro Korienev on 11/2/14.
//  Copyright (c) 2014 Petro Korienev. All rights reserved.
//

#import "TransparentControl.h"

@implementation TransparentControl

- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    return CGRectContainsPoint(self.bounds, point) ? self : nil;
}

@end
