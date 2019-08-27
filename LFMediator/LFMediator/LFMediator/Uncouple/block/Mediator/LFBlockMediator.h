//
//  LFBlockMediator.h
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LFBlockMediator : NSObject
@property (nonatomic, strong) NSMutableDictionary *map;

- (void)registerKey:(NSString *)key block:(nonnull id _Nullable (^)(NSDictionary *params))block;
- (id)excuteBlockWithKey:(NSString *)key params:(NSDictionary *)params;
@end

NS_ASSUME_NONNULL_END
