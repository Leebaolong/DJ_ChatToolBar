//
//  DJ_MyLibs.m
//  JiLaoDemo
//
//  Created by okwei on 15/7/27.
//  Copyright (c) 2015年 Donny.Justin. All rights reserved.
//

#import "DJ_MyLibs.h"

@implementation DJ_MyLibs
//图片缩放到指定大小尺寸
+(UIImage *)scaleImage:(UIImage *)img ToSize:(CGSize) size
{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片
    return scaledImage;
}
@end
