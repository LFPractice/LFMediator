//
//  LFRuntimeTarget.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFRuntimeTarget.h"
#import "LFRuntimeViewController.h"
@implementation LFRuntimeTarget

- (void)gotoRuntimeVCDetail:(NSDictionary *)params {
    LFRuntimeViewController *vc = [LFRuntimeViewController new];
    vc.name = params[@"name"];
    vc.callBack = params[@"callBack"];
    
    UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].delegate.window.rootViewController;
    [nav pushViewController:vc animated:YES];
}
@end
