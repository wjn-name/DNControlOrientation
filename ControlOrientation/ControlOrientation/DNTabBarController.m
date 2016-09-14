//
//  DNTabBarController.m
//  ControlOrientation
//
//  Created by mainone on 16/9/13.
//  Copyright © 2016年 wjn. All rights reserved.   
//

#import "DNTabBarController.h"

@interface DNTabBarController ()

@end

@implementation DNTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate {
    return self.selectedViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.selectedViewController.supportedInterfaceOrientations;
}


@end
