//
//  ViewController.m
//  ios-event
//
//  Created by admin on 2017/7/18.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *tupian;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    // Do any additional setup after loading the view, typically from a nib.
    tap.delegate=self;
    [self.tupian addGestureRecognizer:tap];
    
}

-(void)tap{
    NSLog(@"%d",222);
}
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    return NO;
}
@end
