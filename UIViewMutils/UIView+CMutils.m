//
//  UIView+CMutils.m
//  PAPersonalDoctor
//
//  Created by 桃子 on 16/4/26.
//  Copyright © 2016年 Ping An Health Insurance Company of China, Ltd. All rights reserved.
//

#import "UIView+CMutils.h"

@implementation UIView (CMutils)

-(UIImage *)clipImage{
    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, [UIScreen mainScreen].scale);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *_image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return _image;
}

-(UIImage *)clipImageWithRect:(CGRect)rect{
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, -rect.origin.x, -rect.origin.y);
    CALayer *layer = self.layer;
    [layer renderInContext:context];
    
    UIImage *_image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return _image;
}

-(void)addBorderWithWidth:(CGFloat)width borderColor:(UIColor *)borderColor{
    self.layer.borderColor=borderColor.CGColor;
    self.layer.borderWidth=width;
}

-(void)addCornerWithRadius:(CGFloat)radius{
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
}

-(void)addCorner:(CGFloat)cornerRadio withBorderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth{
    self.layer.cornerRadius = cornerRadio;
    self.layer.masksToBounds = YES;
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = [color CGColor];
}

-(void)addGradientColorBackground:(NSArray *)colors{
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    gradient.colors = colors;
    [self.layer insertSublayer:gradient atIndex:0];
}

@end
