//
//  ViewController.m
//  事件穿透
//
//  Created by leihuan on 16/7/11.
//  Copyright © 2016年 leihuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)redButtonClick {
    
    NSLog(@"红色按钮被点击");
    
}


- (IBAction)blueButtonClick {
    
    NSLog(@"蓝色按钮被点击");
}

@end
