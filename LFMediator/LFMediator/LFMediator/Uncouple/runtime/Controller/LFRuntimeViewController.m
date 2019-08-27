//
//  LFRuntimeViewController.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFRuntimeViewController.h"

@interface LFRuntimeViewController ()

@end

@implementation LFRuntimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = self.name;
    [self.view setBackgroundColor:[UIColor whiteColor]];
    if (self.callBack) {
        self.callBack();
    }
}

@end
