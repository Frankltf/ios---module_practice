//
//  AddView.m
//  ios-xib-two
//
//  Created by admin on 2017/7/12.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "AddView.h"

@implementation AddView

+(instancetype)addnib{
    return [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil]firstObject];
}

@end
