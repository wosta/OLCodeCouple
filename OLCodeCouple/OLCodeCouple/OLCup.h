//
//  OLCup.h
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OLCup : NSObject
+ (instancetype)sharedInstance;
- (id)provideWater;
- (id)provideMilk;
@end
