//
//  LFProtocolTestMediator.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFProtocolTestMediator.h"
static LFProtocolTestMediator *protocolTestMediator;
@implementation LFProtocolTestMediator
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!protocolTestMediator) {
            protocolTestMediator = [LFProtocolTestMediator new];
        }
    });
    return protocolTestMediator;
}
@end
