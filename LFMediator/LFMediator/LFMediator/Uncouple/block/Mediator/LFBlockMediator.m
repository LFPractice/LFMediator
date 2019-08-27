//
//  LFBlockMediator.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFBlockMediator.h"
@interface LFBlockMediator()

@end

@implementation LFBlockMediator
- (void)registerKey:(NSString *)key block:(id  _Nullable (^)(NSDictionary * _Nonnull))block {
    if ((!key || !block)) {
        return;
    }
    self.map[key] = block;
}
- (id)excuteBlockWithKey:(NSString *)key params:(NSDictionary *)params {
    if (!key) {
        return nil;
    }
    id(^block)(NSDictionary *) = self.map[key];
    if (!block) {
        return nil;
    }
    return block(params);
}
- (NSMutableDictionary *)map {
    if (!_map) {
        _map = [[NSMutableDictionary alloc]init];
    }
    return _map;
}
@end
