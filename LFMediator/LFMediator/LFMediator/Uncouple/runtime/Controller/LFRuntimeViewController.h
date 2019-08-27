//
//  LFRuntimeViewController.h
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LFRuntimeViewController : UIViewController
@property (nonatomic, strong) NSString *name;
@property (nonatomic, copy) void(^callBack)(void);
@end

NS_ASSUME_NONNULL_END
