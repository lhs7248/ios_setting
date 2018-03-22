//
//  ViewController.m
//  Setting
//
//  Created by lhs7248 on 2018/3/22.
//  Copyright © 2018年 lhs7248. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *showTextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
#if DEBUG
    
    NSString * setUrl =  [[NSUserDefaults standardUserDefaults]stringForKey:@"debug_url_perference_Multi"];
    if (setUrl == nil) {
        setUrl = @"Developer ULR";
    }

#else
    
    
    NSString * setUrl = @"release URL";
    
    
 

#endif
    

    

    
    self.showTextLabel.text = setUrl;
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
