//
//  JYFAnimation.m
//  JYFTransition
//
//  Created by jiangyunfeng on 2018/5/28.
//  Copyright © 2018年 jiangyunfeng. All rights reserved.
//

#import "JYFAnimation.h"

@implementation JYFAnimation

+ (CATransition *)transitionWithType:(AnimationType) type direction:(AnimationDirection)direction {
    CATransition *animation = [CATransition animation];
    animation.duration = 0.5f;
    
    switch (type) {
        case AnimationTypeFade:
            animation.type = kCATransitionFade;
            break;
        case AnimationTypePush:
            animation.type = kCATransitionPush;
            break;
        case AnimationTypeReveal:
            animation.type = kCATransitionReveal;
            break;
        case AnimationTypeMoveIn:
            animation.type = kCATransitionMoveIn;
            break;
        case AnimationTypeCube:
            animation.type = @"cube";
            break;
        case AnimationTypeSuckEffect:
            animation.type = @"suckEffect";
            break;
        case AnimationTypeOglFlip:
            animation.type = @"oglFlip";
            break;
        case AnimationTypePageCurl:
            animation.type = @"pageCurl";
            break;
        case AnimationTypePageUnCurl:
            animation.type = @"pageUnCurl";
            break;
        case AnimationTypeCameraOpen:
            animation.type = @"cameraIrisHollowOpen";
            break;
        case AnimationTypeCameraClose:
            animation.type = @"cameraIrisHollowClose";
            break;
        case AnimationTypeRippleEffect:
            animation.type = @"rippleEffect";
            break;
        default:
            break;
    }
    
    if (direction) {
        switch (direction) {
            case AnimationDirectionLeft:
                animation.subtype = kCATransitionFromLeft;
                break;
            case AnimationDirectionRight:
                animation.subtype = kCATransitionFromRight;
                break;
            case AnimationDirectionTop:
                animation.subtype = kCATransitionFromTop;
                break;
            case AnimationDirectionBottom:
                animation.subtype = kCATransitionFromBottom;
                break;
            default:
                break;
        }
    }
    
    return animation;
}

@end
