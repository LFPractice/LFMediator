//
//  LFProtocolViewController.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFProtocolViewController.h"

@interface LFProtocolViewController ()

@end

@implementation LFProtocolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.name;
    [self.view setBackgroundColor:[UIColor whiteColor]];
    if (self.callBack) {
        self.callBack();
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
