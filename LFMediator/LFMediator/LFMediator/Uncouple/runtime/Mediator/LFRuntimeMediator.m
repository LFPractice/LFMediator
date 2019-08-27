//
//  LFRuntimeMediator.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFRuntimeMediator.h"

@implementation LFRuntimeMediator
- (id)performTarget:(NSString *)target action:(NSString *)action params:(NSDictionary *)params {
    Class cls;
    id obj;
    SEL sel;
    
    cls = NSClassFromString(target);
    if (!cls) {
        goto fail;
    }
    
    sel = NSSelectorFromString(action);
    if (!sel) {
        goto fail;
    }
    
    obj = [cls new];
    
    if (![obj respondsToSelector:sel]) {
        goto fail;
    }
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    return [obj performSelector:sel withObject:params];
#pragma clang diagnostic pop
fail:
    NSLog(@"找不到目标，写容错逻辑");
    return nil;
}
@end
