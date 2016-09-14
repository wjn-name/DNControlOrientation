//
//  DNNavigationController.m
//  ControlOrientation
//
//  Created by mainone on 16/9/13.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "DNNavigationController.h"

@interface DNNavigationController ()

@end

@implementation DNNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate {
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return self.topViewController.supportedInterfaceOrientations;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return [self.topViewController preferredStatusBarStyle];
}

@end
