//
//  PercentageView.m
//  CustomControl
//
//  Created by Wayne-Jet on 2018/5/30.
//  Copyright © 2018年 Wayne-Jet. All rights reserved.
//

#import "PercentageView.h"

@implementation PercentageView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setLayoutStyle:self];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        [self setLayoutStyle:self];
    }
    return self;
}

- (void) setPercentageView{
    UIView *view = [[UIView alloc]init];
    view.frame = CGRectMake(0, 0, self.frame.size.width * self.percentage, 10);
    view.backgroundColor = [UIColor redColor];
    [self setLayoutStyle:view];
    [self addSubview:view];
}

- (void)setLayoutStyle:(UIView *) view {
    view.layer.borderColor = [[UIColor clearColor] CGColor];
    view.layer.borderWidth = 1;
    view.layer.cornerRadius = view.frame.size.height/2;
    view.layer.shadowColor = [[UIColor blackColor] CGColor];
    view.layer.shadowOffset = CGSizeMake(0,2);
    view.layer.shadowOpacity = 0.1;
}

@end
