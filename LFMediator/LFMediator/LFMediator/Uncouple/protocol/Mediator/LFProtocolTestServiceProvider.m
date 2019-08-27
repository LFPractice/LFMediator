//
//  LFProtocolTestServiceProvider.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFProtocolTestServiceProvider.h"
#import "LFProtocolTestMediator.h"
#import "LFProtocolViewController.h"
@implementation LFProtocolTestServiceProvider
+ (void)load {
    [[LFProtocolTestMediator sharedInstance]registProtocol:@protocol(LFProtocolTestProtocol) class:self];
}
- (void)gotoProtocolViewDetailWithName:(NSString *)name callBack:(void (^)(void))callBack {
    LFProtocolViewController *vc = [LFProtocolViewController new];
    vc.name = name;
    vc.callBack = callBack;
    
    UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].delegate.window.rootViewController;
    [nav pushViewController:vc animated:YES];
}
@end
