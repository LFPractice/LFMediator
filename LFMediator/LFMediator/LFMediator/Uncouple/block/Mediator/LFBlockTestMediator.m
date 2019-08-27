//
//  LFBlockTestMediator.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFBlockTestMediator.h"

static LFBlockTestMediator *singleTestMediator;
@implementation LFBlockTestMediator
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (singleTestMediator == nil) {
            singleTestMediator = [LFBlockTestMediator new];
        }
    });
    return singleTestMediator;
}

- (void)gotoBlockViewDetailWithName:(NSString *)name callBack:(void (^)(void))callBack {
    [self excuteBlockWithKey:@"gotoBlockViewDetail" params:@{@"name":name,
                                          @"callBack":callBack
                                          }];
}
@end
