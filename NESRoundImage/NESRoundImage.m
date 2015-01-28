//
//  NESRoundImage.m
//  NESRoundImageDemo
//
//  Created by Nestor on 15/1/28.
//  Copyright (c) 2015年 NesTalk. All rights reserved.
//

#import "NESRoundImage.h"

@interface NESRoundImage ()

@property (nonatomic,retain) UIImageView *imageView;

@end

@implementation NESRoundImage

-(void)setImage:(UIImage *)image
{
    if (self.image != image) {
        _image = image;
    }
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    if (self.imageView) {
        [self.imageView removeFromSuperview];
        self.imageView = nil;
    }
    
    CGFloat cornerRadius = self.roundCorner ? self.cornerRadius ? self.cornerRadius : MIN(CGRectGetWidth(self.frame),CGRectGetHeight(self.frame)) / 2 : 0;
    self.layer.cornerRadius = cornerRadius;
    self.imageView.layer.cornerRadius = cornerRadius;
    
    if (self.showBorder) {
        self.layer.borderWidth = self.borderWidth;
        self.layer.borderColor = self.borderColor.CGColor;
    }
    
    if (self.showShadow) {
        self.layer.shadowOffset = self.shadowOffset;
        self.layer.shadowColor = self.shadowColor.CGColor;
        self.layer.shadowOpacity = self.shadowOpacity;
    }
    
    self.imageView.contentMode = self.contentMode;
    
    [self addSubview:self.imageView];
    
    if (self.autoLayout) {
        NSDictionary *views = NSDictionaryOfVariableBindings(_imageView);
        NSString *hCons = self.showBorder ? [NSString stringWithFormat:@"|-%f-[_imageView]-%f-|",self.borderWidth/2,self.borderWidth/2] : @"|-[_imageView]-|";
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:hCons options:0 metrics:0 views:views]];
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:[NSString stringWithFormat:@"V:%@",hCons] options:0 metrics:0 views:views]];
    }
    
}

-(UIImageView *)imageView
{
    if (!_imageView) {
        NSLog(@"%s-[%s]:%@",__func__,__TIME__,NSStringFromCGRect(self.bounds));
        _imageView = [[UIImageView alloc] initWithFrame:CGRectInset(self.bounds, self.showBorder ? self.borderWidth / 2 : 0, self.showBorder ? self.borderWidth / 2 : 0)];
        _imageView.image = self.image;
        _imageView.contentMode = self.contentMode;
        _imageView.clipsToBounds = YES;
        _imageView.translatesAutoresizingMaskIntoConstraints = !self.autoLayout;
    }
    return _imageView;
}

#pragma mark -
#pragma mark init method

-(NESRoundImage *)initWithImage:(UIImage *)image
{
    self = [self initWithFrame:CGRectMake(1, 1, 1, 1) image:image];
    if (self) {
        self.autoLayout = YES;
        self.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return self;
}


-(NESRoundImage *)initWithFrame:(CGRect)frame image:(UIImage *)image
{    
    self = [super initWithFrame:frame];
    if (self) {
        self.image = image;
        self.borderColor = [UIColor whiteColor];
        self.borderWidth = 5;
        self.shadowColor = [UIColor blackColor];
        self.shadowOffset = CGSizeMake(2, 2);
        self.shadowOpacity = 0.4;
        self.backgroundColor = [UIColor clearColor];
        self.cornerRadius = 0;
        self.showBorder = YES;
        self.showShadow = YES;
        self.roundCorner = YES;
        self.contentMode = UIViewContentModeScaleAspectFill;
        self.autoLayout = NO;
    }
    return self;
}




@end
