//
//  LogoView.m
//  ScrollLogo
//
//  Created by BBbao App Developer on 6/17/15.
//  Copyright (c) 2015 BBbao App Developer. All rights reserved.
//

#import "LogoView.h"

@implementation LogoView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        UIImage *img = [UIImage imageNamed:@"11.jpg"];
        CALayer *imgLayer = [CALayer layer];
        imgLayer.frame = CGRectMake(10, 5, 70, 70);
        imgLayer.contents = (id)img.CGImage;
        imgLayer.cornerRadius = 35;
        imgLayer.masksToBounds = YES;
        imgLayer.borderWidth = 1;
        imgLayer.borderColor = [UIColor orangeColor].CGColor;
        
        [self.layer addSublayer:imgLayer];
        
        UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 80, 70, 15)];
        [textLabel setText:[NSString stringWithFormat:@"庄生晓梦迷蝴蝶"]];
        [textLabel setFont:[UIFont systemFontOfSize:10]];
        [textLabel setTextColor:[UIColor blackColor]];
        [self addSubview:textLabel];
        
    }
    
    return self;
}

@end
