//
//  LFRuntimeMediator.h
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LFRuntimeMediator : NSObject
- (id)performTarget:(NSString *)target action:(NSString *)action params:(NSDictionary *)params;
@end

NS_ASSUME_NONNULL_END
