//
//  XMGMyView.m
//  ios-module-style
//
//  Created by admin on 2017/7/12.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "XMGMyView.h"
#import "XMGAddViewController.h"
@interface XMGMyView ()

@end
@implementation XMGMyView

+(instancetype)addnib{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}


@end
