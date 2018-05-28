//
//  JYFAnimation.h
//  JYFTransition
//
//  Created by jiangyunfeng on 2018/5/28.
//  Copyright © 2018年 jiangyunfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#warning 除了前四种其他都是苹果私有API中动画，审核可能被拒
#warning 除了前四种其他都是苹果私有API中动画，审核可能被拒
#warning 除了前四种其他都是苹果私有API中动画，审核可能被拒

typedef enum : NSUInteger {
    AnimationTypeFade = 1,                   //淡入淡出
    AnimationTypePush,                       //推挤
    AnimationTypeReveal,                     //揭开
    AnimationTypeMoveIn,                     //覆盖
    AnimationTypeCube,                       //立方体
    AnimationTypeSuckEffect,                 //吮吸
    AnimationTypeOglFlip,                    //翻转
    AnimationTypeRippleEffect,               //波纹
    AnimationTypePageCurl,                   //翻页
    AnimationTypePageUnCurl,                 //反翻页
    AnimationTypeCameraOpen,                 //开镜头
    AnimationTypeCameraClose,                //关镜头
    
} AnimationType;

typedef enum : NSUInteger {
    AnimationDirectionRight,
    AnimationDirectionLeft,
    AnimationDirectionTop,
    AnimationDirectionBottom,
} AnimationDirection;

@interface JYFAnimation : NSObject

+ (CATransition *)transitionWithType:(AnimationType) type direction:(AnimationDirection)direction;

@end
