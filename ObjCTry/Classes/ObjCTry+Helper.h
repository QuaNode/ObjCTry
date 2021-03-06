//
//  ObjCTry+Helper.h
//
//  Created by Svetislav Markovic on 3/1/17.
//  Copyright © 2017 <svetam.sd@gmail.com>. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObjC <T> : NSObject

+ (T)try:(T(^)(void))tryBlock error:(__autoreleasing NSError **)error;

@end
