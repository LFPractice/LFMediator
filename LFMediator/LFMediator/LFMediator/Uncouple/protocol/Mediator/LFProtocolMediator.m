//
//  LFProtocolMediator.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFProtocolMediator.h"

@implementation LFProtocolMediator

- (void)registProtocol:(Protocol *)protocol class:(Class)cls {
    if (!protocol || !cls) {
        return;
    }
    self.map[NSStringFromProtocol(protocol)] = cls;
}
- (id)getObject:(Protocol *)protocol {
    if (!protocol) {
        return nil;
    }
    
    Class cls = self.map[NSStringFromProtocol(protocol)];
    id obj = [cls new];
    if ([obj conformsToProtocol:protocol]) {
        return obj;
    }
    return nil;
}

- (NSMutableDictionary *)map {
    if (!_map) {
        _map = [[NSMutableDictionary alloc]init];
    }
    return _map;
}
@end
