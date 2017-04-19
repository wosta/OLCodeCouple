//
//  OLCup.m
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import "OLCup.h"

@implementation OLCup

+ (instancetype)sharedInstance {
    static OLCup *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[OLCup alloc] init];
    });
    return _sharedInstance;
}

- (id)provideWater {
    return @"provideWater";
}

- (id)provideMilk {
    return @"provideMilk";
}
@end
