//
//  ObjCTry+Helper.m
//
//  Created by Svetislav Markovic on 3/1/17.
//  Copyright © 2017 <svetam.sd@gmail.com>. All rights reserved.
//

#import "ObjCTry+Helper.h"

@implementation ObjC

+ (BOOL)try:(void(^)(void))tryBlock error:(__autoreleasing NSError **)error {
    @try {
        tryBlock();
        return YES;
    }
    @catch (NSException *exception) {
        *error = [[NSError alloc] initWithDomain:exception.name code:0 userInfo:exception.userInfo];
    }
    return NO;
}

@end

