//
//  LFProtocolTestProtocol.h
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LFProtocolTestProtocol <NSObject>
- (void)gotoProtocolViewDetailWithName:(NSString *)name callBack:(void(^)(void))callBack;
@end

NS_ASSUME_NONNULL_END
