//
//  ObjCTry+Helper.m
//
//  Created by Svetislav Markovic on 3/1/17.
//  Copyright © 2017 <svetam.sd@gmail.com>. All rights reserved.
//

#import "ObjCTry+Helper.h"

@implementation ObjC

+ (__autoreleasing id)try:(__autoreleasing id(^)(void))tryBlock error:(__autoreleasing NSError **)error {
    @try {
        return tryBlock();
    }
    @catch (NSException *exception) {
        NSMutableDictionary *userInfo = @{NSLocalizedFailureReasonErrorKey: exception.reason}.mutableCopy;
        if (exception.userInfo) [userInfo addEntriesFromDictionary:exception.userInfo];
        *error = [[NSError alloc] initWithDomain:exception.name code:0 userInfo:userInfo];
    }
    return nil;
}

@end

