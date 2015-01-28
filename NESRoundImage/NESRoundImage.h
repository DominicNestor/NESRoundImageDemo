//
//  NESRoundImage.h
//  NESRoundImageDemo
//
//  Created by Nestor on 15/1/28.
//  Copyright (c) 2015年 NesTalk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NESRoundImage : UIView

//边框颜色,默认为白色
@property (nonatomic,retain) UIColor *borderColor;
//边框宽度,默认为5.0
@property (nonatomic,assign) CGFloat borderWidth;
//阴影偏移量,默认为(2,2)
@property (nonatomic,assign) CGSize shadowOffset;
//阴影透明度,默认为0.4
@property (nonatomic,assign) CGFloat shadowOpacity;
//阴影颜色,默认为黑色
@property (nonatomic,retain) UIColor *shadowColor;
//圆角大小,默认为0,在roundCorner为YES的情况下0代表正圆,如果不希望显示圆角直接设置roundCorner属性为NO
@property (nonatomic,assign) CGFloat cornerRadius;
//是否显示阴影,默认YES;
@property (nonatomic,assign) BOOL showShadow;
//是否显示边框,默认YES:
@property (nonatomic,assign) BOOL showBorder;
//是否显示圆角,默认YES;
@property (nonatomic,assign) BOOL roundCorner;
//是否应用自动布局,根据使用的初始化方法不同自动设置;
@property (nonatomic,assign) BOOL autoLayout;

//图片包含模式,默认为UIViewContentModeScaleAspectFill
@property (nonatomic,assign) UIViewContentMode contentMode;
@property (nonatomic,copy) UIImage *image;

/**
 *  @author writen by Nestor. Personal site - http://www.nestor.me , 15-01-28 10:30:49
 *
 *  初始化组件,适用于非自动布局
 *
 *  @param frame 组件的frame
 *  @param image 需要显示的图片
 *
 *  @return 实例
 */
-(NESRoundImage *)initWithFrame:(CGRect)frame image:(UIImage *)image;

/**
 *  @author writen by Nestor. Personal site - http://www.nestor.me , 15-01-28 11:38:06
 *
 *  初始化组件,适用于自动布局
 *
 *  @param image 需要显示的图片
 *
 *  @return 实例
 */
-(NESRoundImage *)initWithImage:(UIImage *)image;

@end
