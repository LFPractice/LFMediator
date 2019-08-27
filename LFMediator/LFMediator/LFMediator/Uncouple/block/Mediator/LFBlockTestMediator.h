//
//  LFBlockTestMediator.h
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFBlockMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface LFBlockTestMediator : LFBlockMediator
+ (instancetype)sharedInstance;
- (void)gotoBlockViewDetailWithName:(NSString *)name callBack:(void(^)(void))callBack;
@end

NS_ASSUME_NONNULL_END
