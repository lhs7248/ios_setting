//
//  ViewController.m
//  Setting
//
//  Created by lhs7248 on 2018/3/22.
//  Copyright © 2018年 lhs7248. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * setUrl =  [[NSUserDefaults standardUserDefaults]stringForKey:@"debug_url_perference_Multi"];
    
    NSLog(@"------%@",setUrl);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
