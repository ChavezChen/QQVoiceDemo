//
//  CWVoiceButton.m
//  QQVoiceDemo
//
//  Created by chavez on 2017/9/14.
//  Copyright © 2017年 陈旺. All rights reserved.
//

#import "CWVoiceButton.h"
#import "UIView+CWChat.h"

@implementation CWVoiceButton

+ (instancetype)buttonWithBackImageNor:(NSString *)backImageNor backImageSelected:(NSString *)backImageSelected imageNor:(NSString *)imageNor imageSelected:(NSString *)imageSelected frame:(CGRect)frame isMicPhone:(BOOL)isMicPhone{
    
    UIImage *normalImage = [UIImage imageNamed:backImageNor]; //aio_voice_button_press
    UIImage *selectedImage = [UIImage imageNamed:backImageSelected];
    CWVoiceButton *btn = [CWVoiceButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    btn.cw_size = normalImage.size;
    if (isMicPhone) {
        [btn setBackgroundImage:normalImage forState:UIControlStateNormal];
        [btn setBackgroundImage:selectedImage forState:UIControlStateSelected];
    }
    btn.norImage = normalImage;
    btn.selectedImage = selectedImage;
    [btn setImage:[UIImage imageNamed:imageNor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:imageSelected] forState:UIControlStateSelected];
    btn.imageView.backgroundColor = [UIColor clearColor];
    if (!isMicPhone) {
        btn.backgroudLayer.contents = (__bridge id _Nullable)(normalImage.CGImage);
    }
    
    return btn;
}


- (CALayer *)backgroudLayer {
    if (_backgroudLayer == nil) {
        CALayer *layer = [[CALayer alloc] init];
        layer.frame = self.bounds;
        [self.layer insertSublayer:layer atIndex:0];
        _backgroudLayer = layer;
    }
    return _backgroudLayer;
}

- (void)setSelected:(BOOL)selected {
    [super setSelected:selected];
    // 取消CALayer的隐式动画
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    UIImage *image = selected ? self.selectedImage : self.norImage;
    self.backgroudLayer.contents = (__bridge id _Nullable)(image.CGImage);
    [CATransaction commit];
    
}




- (BOOL)isHighlighted {
    return NO;
}


@end
