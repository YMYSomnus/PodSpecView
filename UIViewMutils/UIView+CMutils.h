//
//  UIView+CMutils.h
//  PAPersonalDoctor
//
//  Created by 桃子 on 16/4/26.
//  Copyright © 2016年 Ping An Health Insurance Company of China, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CMutils)

/**
 *  截取当前的视图转换为图片
 *
 *  @return 返回图片
 */
-(UIImage *)clipImage;
-(UIImage *)clipImageWithRect:(CGRect)rect;

-(void)addBorderWithWidth:(CGFloat)width borderColor:(UIColor *)borderColor;
-(void)addCornerWithRadius:(CGFloat)radius;
-(void)addCorner:(CGFloat)cornerRadio withBorderColor:(UIColor *)color borderWidth:(CGFloat)borderWidth;

/**
 *  添加渐变色北京
 *
 *  @param colors 渐变颜色值
 */
-(void)addGradientColorBackground:(NSArray *)colors;

@end
