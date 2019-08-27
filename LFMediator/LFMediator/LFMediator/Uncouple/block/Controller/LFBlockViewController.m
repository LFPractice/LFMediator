//
//  LFBlockViewController.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFBlockViewController.h"

@interface LFBlockViewController ()

@end

@implementation LFBlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.name;
    [self.view setBackgroundColor:[UIColor whiteColor]];
    if (self.callBack) {
        self.callBack();
    }
}


@end
