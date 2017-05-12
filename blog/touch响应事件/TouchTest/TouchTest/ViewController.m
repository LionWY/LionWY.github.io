//
//  ViewController.m
//  TouchTest
//
//  Created by Lion Liu on 2017/5/12.
//  Copyright © 2017年 Lion Liu. All rights reserved.
//

#import "ViewController.h"
#import "TouchView.h"

@interface ViewController ()




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.touchView.bView = self.bView;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UIResponder * next = [self nextResponder];
    NSMutableString * prefix = @"".mutableCopy;
    
    while (next != nil) {
        NSLog(@"%@%@", prefix, [next class]);
        [prefix appendString: @"--"];
        next = [next nextResponder];
    }
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
