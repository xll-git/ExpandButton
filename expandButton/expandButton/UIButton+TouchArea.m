//
//  UIButton+TouchArea.m
//  expandButton
//
//  Created by OKNI-IOS on 2022/3/5.
//

#import "UIButton+TouchArea.h"
#import <objc/runtime.h>

static char edgeInsetsKey;

@implementation UIButton (TouchArea)

- (void)setExpandAreaWithEdgeInsets:(UIEdgeInsets)edgeInsets {
    objc_setAssociatedObject(self, &edgeInsetsKey, [NSValue valueWithUIEdgeInsets:edgeInsets], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (void)setExpandSize:(CGFloat)size {
    objc_setAssociatedObject(self, &edgeInsetsKey, [NSValue valueWithUIEdgeInsets:UIEdgeInsetsMake(size, size, size, size)], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGRect)expandRect {
    UIEdgeInsets edgeInsets = [objc_getAssociatedObject(self, &edgeInsetsKey) UIEdgeInsetsValue];
    return CGRectMake(self.bounds.origin.x - edgeInsets.left,
                      self.bounds.origin.y - edgeInsets.top,
                      self.bounds.size.width + edgeInsets.left + edgeInsets.right,
                      self.bounds.size.height + edgeInsets.top + edgeInsets.bottom);
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    if(CGRectEqualToRect([self expandRect], self.bounds)) {
        return [super pointInside:point withEvent:event];
    }
    return CGRectContainsPoint([self expandRect], point);
}

@end
