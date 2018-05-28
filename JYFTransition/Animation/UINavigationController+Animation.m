//
//  UINavigationController+Animation.m
//  JYFTransition
//
//  Created by jiangyunfeng on 2018/5/28.
//  Copyright © 2018年 jiangyunfeng. All rights reserved.
//

#import "UINavigationController+Animation.h"
#import <objc/runtime.h>
static void *typeKey = &typeKey;
static void *directionKey = &directionKey;

@implementation UINavigationController (Animation)
- (void)pushViewController:(nonnull UIViewController *)viewController animationType:(AnimationType)type direction:(AnimationDirection)direction {
    [self setMyType:type];
    [self setMyDirection:direction];
    CATransition *animation = [JYFAnimation transitionWithType:type direction:direction];
    [self.view.layer addAnimation:animation forKey:kCATransition];
    [self pushViewController:viewController animated:NO];
}

- (void)setMyType:(AnimationType)myType{
    NSString *num = [[NSString alloc] initWithFormat:@"%lu", (unsigned long)myType];
    objc_setAssociatedObject(self, &typeKey, num, OBJC_ASSOCIATION_COPY);
}

- (AnimationType)myType{
    NSString *str = [NSString stringWithFormat:@"%@", objc_getAssociatedObject(self, &typeKey)];
    AnimationType type = (AnimationType)[str integerValue];
    return type;
}

- (void)setMyDirection:(AnimationDirection)myDirection{
    NSString *num = [[NSString alloc] initWithFormat:@"%lu", (unsigned long)myDirection];
    objc_setAssociatedObject(self, &directionKey, num, OBJC_ASSOCIATION_COPY);
}

- (AnimationDirection)myDirection{
    NSString *str = [NSString stringWithFormat:@"%@", objc_getAssociatedObject(self, &directionKey)];
    AnimationDirection direction = (AnimationDirection)[str integerValue];
    return direction;
}


- (void)popViewController {
    CATransition *animation = [JYFAnimation transitionWithType:self.myType direction:self.myDirection];
    [self.view.layer addAnimation:animation forKey:kCATransition];
    [self popViewControllerAnimated:NO];
}

- (void)popToViewController:(UIViewController *)viewController {
    CATransition *animation = [JYFAnimation transitionWithType:self.myType direction:self.myDirection];
    [self.view.layer addAnimation:animation forKey:kCATransition];
    [self popToViewController:viewController animated:NO];
}

- (void)popToRootViewController {
    CATransition *animation = [JYFAnimation transitionWithType:self.myType direction:self.myDirection];
    [self.view.layer addAnimation:animation forKey:kCATransition];
    [self popToRootViewControllerAnimated:NO];
}

- (void)popViewController:(nonnull UIViewController *)viewController animationType:(AnimationType)type direction:(AnimationDirection)direction {
    CATransition *animation = [JYFAnimation transitionWithType:type direction:direction];
    [self.view.layer addAnimation:animation forKey:kCATransition];
    [self popToViewController:viewController animated:NO];
}

- (void)popViewControllerAnimationType:(AnimationType)type direction:(AnimationDirection)direction {
    CATransition *animation = [JYFAnimation transitionWithType:type direction:direction];
    [self.view.layer addAnimation:animation forKey:kCATransition];
    [self popViewControllerAnimated:NO];
}

- (void)popToRootViewControllerAnimationType:(AnimationType)type direction:(AnimationDirection)direction {
    CATransition *animation = [JYFAnimation transitionWithType:type direction:direction];
    [self.view.layer addAnimation:animation forKey:kCATransition];
    [self popToRootViewControllerAnimated:NO];
}

@end
