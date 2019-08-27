//
//  LFProtocolMediator.h
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LFProtocolMediator : NSObject
@property (nonatomic, strong) NSMutableDictionary *map;
- (void)registProtocol:(Protocol *)protocol class:(Class)cls;
- (id)getObject:(Protocol *)protocol;
@end

NS_ASSUME_NONNULL_END
