//
//  LFBlockTestRegister.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFBlockTestRegister.h"
#import "LFBlockTestMediator.h"
#import "LFBlockViewController.h"
@implementation LFBlockTestRegister
+ (void)load {
    [[LFBlockTestMediator sharedInstance]registerKey:@"gotoBlockViewDetail" block:^id _Nullable(NSDictionary * _Nonnull params) {
        
        LFBlockViewController *vc = [LFBlockViewController new];
        vc.name = params[@"name"];
        vc.callBack = params[@"callBack"];
        UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].delegate.window.rootViewController;
        [nav pushViewController:vc animated:YES];
        return nil;
    }];
}
@end
