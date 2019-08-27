//
//  LFRuntimeTestMediator.m
//  LFMediator
//
//  Created by 王林芳 on 2019/8/27.
//  Copyright © 2019 王林芳. All rights reserved.
//

#import "LFRuntimeTestMediator.h"

@implementation LFRuntimeTestMediator

- (void)gotoRuntimeVCDetailWithName:(NSString *)name callBack:(void (^)(void))callBack {
    [self performTarget:@"LFRuntimeTarget" action:@"gotoRuntimeVCDetail:" params:@{@"name":name,@"callBack":callBack}];
}
@end
