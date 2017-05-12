//
//  ViewController.h
//  TouchTest
//
//  Created by Lion Liu on 2017/5/12.
//  Copyright © 2017年 Lion Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BottomView.h"
#import "TopView.h"
#import "TouchView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet BottomView *bView;
@property (weak, nonatomic) IBOutlet TouchView *touchView;
@property (weak, nonatomic) IBOutlet TopView *topView;

@end

