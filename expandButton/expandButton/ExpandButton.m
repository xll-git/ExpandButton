//
//  ExpandButton.m
//  expandButton
//
//  Created by OKNI-IOS on 2022/3/5.
//

#import "ExpandButton.h"

@implementation ExpandButton

- (CGFloat)expandWidth {
    return MAX(0, _expandWidth);
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect btnBounds = self.bounds;
    // 扩大点击区域
    btnBounds = CGRectInset(btnBounds, -self.expandWidth, -self.expandWidth);
    // 判断是否在区域内
    return CGRectContainsPoint(btnBounds, point);
}


@end
