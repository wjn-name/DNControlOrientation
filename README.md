# DNControlOrientation
屏幕横竖屏显示控制可旋转方向

###应用场景

在开发中,经常会有这样的需求:某些界面不允许横屏或者竖屏,而某些界面可以任意转屏

###具体实现

1)在自定义的导航控制器中设置

    - (BOOL)shouldAutorotate {
        return self.topViewController.shouldAutorotate;
    }
    
    - (UIInterfaceOrientationMask)supportedInterfaceOrientations {
        return self.topViewController.supportedInterfaceOrientations;
    }
    
    - (UIStatusBarStyle)preferredStatusBarStyle {
        return [self.topViewController preferredStatusBarStyle];
    }

2)在tabbar控制器里设置

    - (BOOL)shouldAutorotate {
        return self.selectedViewController.shouldAutorotate;
    }
    
    - (UIInterfaceOrientationMask)supportedInterfaceOrientations {
        return self.selectedViewController.supportedInterfaceOrientations;
    }

3)在对应控制器中具体指明要的旋转效果

    - (UIInterfaceOrientationMask)supportedInterfaceOrientations {
        return UIInterfaceOrientationMaskPortrait;
    }
    
    - (BOOL)shouldAutorotate {
        return NO;
    }

另外由于app可能是在手机横屏的时候进入,这样会导致初始方向出现问题,我们需要对这一问题进行处理

在AppDelegate中,在视图创建之前设置

    UIInterfaceOrientation orientation = UIInterfaceOrientationPortrait;
    [[UIApplication sharedApplication] setStatusBarOrientation:orientation];


到这里一个完整的横竖屏控制就已经设置好了,到时候只需要在对应控制器中设置该控制器自己的旋转方向即可

具体实现和效果可查看demo



