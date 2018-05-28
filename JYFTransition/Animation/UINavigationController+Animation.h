//
//  UINavigationController+Animation.h
//  JYFTransition
//
//  Created by jiangyunfeng on 2018/5/28.
//  Copyright © 2018年 jiangyunfeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JYFAnimation.h"

@interface UINavigationController (Animation)
@property (assign, nonatomic)AnimationType myType;
@property (assign, nonatomic)AnimationDirection myDirection;


/**
 push页面转场动画

 @param viewController 要push出来的页面
 @param type 动画类型
 @param direction 方向
 */
- (void)pushViewController:(nonnull UIViewController *)viewController animationType:(AnimationType)type direction:(AnimationDirection)direction;

//与push出来的动画相同的动画返回
- (void)popViewController;
- (void)popToViewController:(UIViewController *)viewController;
- (void)popToRootViewController;


/**
 pop页面转场动画 //重新定义与push出来动画不同的pop动画
 
 @param viewController 要pop到的页面
 @param type 动画类型
 @param direction 方向
 */
- (void)popViewController:(nonnull UIViewController *)viewController animationType:(AnimationType)type direction:(AnimationDirection)direction;
- (void)popViewControllerAnimationType:(AnimationType)type direction:(AnimationDirection)direction;
- (void)popToRootViewControllerAnimationType:(AnimationType)type direction:(AnimationDirection)direction;


@end
