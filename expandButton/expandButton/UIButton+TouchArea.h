//
//  UIButton+TouchArea.h
//  expandButton
//
//  Created by OKNI-IOS on 2022/3/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (TouchArea)

// 设置扩大区域
- (void)setExpandAreaWithEdgeInsets:(UIEdgeInsets)edgeInsets;

- (void)setExpandSize:(CGFloat)size;
@end

NS_ASSUME_NONNULL_END
