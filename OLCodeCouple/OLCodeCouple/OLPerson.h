//
//  OLPerson.h
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OLCup.h"

//// 方式二：
//@interface OLPerson : NSObject
///** cup */
//@property (nonatomic, strong) OLCup *cup;
//- (void)drink;
//@end

//// 方式三：
//@interface OLPerson : NSObject
///** cup */
//@property (nonatomic, strong, readonly) OLCup *cup;
//- (void)setCup:(OLCup *)cup;
//- (void)drink;
//@end


//// 方式四：
//@interface OLPerson : NSObject
//- (instancetype)initWithCup:(OLCup *)cup;
//- (void)drink;
//- (void)drinkMilk;
//- (void)drinkWater;
//@end


//// 方式五：
//@interface OLPerson : NSObject
//- (void)drink:(OLCup*)cup;
//@end


// 方式六：
@interface OLPerson : NSObject
- (void)drink:(OLCup*)cup;
@end

