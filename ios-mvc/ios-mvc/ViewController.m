//
//  ViewController.m
//  ios-mvc
//
//  Created by admin on 2017/7/15.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking//AFNetworking.h>
#import <HP_MJExtension/MJExtension.h>
#import "ItemModule.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnclick:(UIButton *)sender {


}
-(void)loadData{
    AFHTTPSessionManager *mgr=[AFHTTPSessionManager manager];
    NSMutableDictionary *parameters=[NSMutableDictionary dictionary];
    parameters[@"a"] = @"square";
    parameters[@"c"] = @"topic";
    NSLog(@"%d",22222);
    [mgr GET:@"http://api.budejie.com/api/api_open.php" parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
        [responseObject writeToFile:@"/module/ios---module_practice/ios-mvc/test.plist" atomically:YES];
        NSArray *dicarr=responseObject[@"square_list"];
        NSArray *arr=[ItemModule mj_objectArrayWithKeyValuesArray:dicarr];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
