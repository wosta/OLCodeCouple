//
//  OLPerson.m
//  OLCodeCouple
//
//  Created by  olive on 2017/4/19.
//  Copyright © 2017年  olive. All rights reserved.
//

#import "OLPerson.h"
#import "OLCup.h"

// 方式一：直接引入cup
//@implementation OLPerson
//- (void)drink {
//    OLCup* c = [OLCup new];
//
//    id water = [c provideWater];
//    [self sip:water];
//}
//
//- (void)sip:(id)water
//{
//    NSLog(@"sip the %@", water);
//}
//@end

//// 方式二
//@implementation OLPerson
//- (void)drink {
//    id water = [self.cup provideWater];
//    [self sip:water];
//}
//
//- (void)sip:(id)water
//{
//    NSLog(@"sip the %@", water);
//}
//@end


//// 方式三
//@interface OLPerson ()
///** cup */
//@property (nonatomic, strong) OLCup *cup;
//@end
//
//@implementation OLPerson
//
//- (void)setCup:(OLCup *)cup {
//    OLCup* anotherCup = [OLCup copy];
//    _cup = anotherCup;
////    这样，Person类就可以避免和外部类共享同一个Cup，杜绝使用同一个水杯的卫生问题 ;)
////    总之，单独的Setter方法让我们对代码有更大的掌控能力，也为后续接手维护你代码的同学带来了方便，利己利人。
//}
//
//- (void)drink {
//    id water = [self.cup provideWater];
//    [self sip:water];
//}
//
//- (void)sip:(id)water
//{
//    NSLog(@"sip the %@", water);
//}
//@end


//// 方式四
//@interface OLPerson ()
///** cup */
//@property (nonatomic, strong) OLCup *myCup;
//@end
//
//@implementation OLPerson
//- (instancetype)initWithCup:(OLCup*)cup {
//    self = [super init];
//    if (self) {
//        self.myCup = cup;
//    }
//    return self;
//}
//
//- (void)drinkWater {
//    id water = [self.myCup provideWater];
//    [self sip:water];
//}
//
//- (void)drinkMilk {
//    id milk = [self.myCup provideMilk];
//    [self sip:milk];
//}
//
//- (void)drink {
//    id water = [self.myCup provideWater];
//    [self sip:water];
//}
//
//- (void)sip:(id)water
//{
//    NSLog(@"sip the %@", water);
//}
//@end


//// 方式五
//@interface OLPerson ()
///** cup */
//@property (nonatomic, strong) OLCup *myCup;
//@end
//
//@implementation OLPerson
//- (void)drink:(OLCup*)cup {
//    id water = [cup provideWater];
//    [self sip:water];
//}
//
//- (void)sip:(id)water
//{
//    NSLog(@"sip the %@", water);
//}
//@end


// 方式六
@interface OLPerson ()
/** cup */
@property (nonatomic, strong) OLCup *myCup;
@end

@implementation OLPerson
- (void)drink:(OLCup *)cup{
    id water = [[OLCup sharedInstance] provideWater];
    [self sip:water];
}

- (void)sip:(id)water
{
    NSLog(@"sip the %@", water);
}
@end
