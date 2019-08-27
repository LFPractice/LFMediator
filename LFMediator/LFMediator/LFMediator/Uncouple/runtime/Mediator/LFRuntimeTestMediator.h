//
//  LFRuntimeTestMediator.h
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFRuntimeMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface LFRuntimeTestMediator : LFRuntimeMediator

- (void)gotoRuntimeVCDetailWithName:(NSString *)name callBack:(void(^)(void))callBack;
@end

NS_ASSUME_NONNULL_END
