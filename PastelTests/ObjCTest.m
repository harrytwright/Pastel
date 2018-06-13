//
//  ObjCTest.m
//  PastelTests
//
//  Created by Harry Wright on 13/06/2018.
//  Copyright © 2018 Cruz. All rights reserved.
//

#import <XCTest/XCTest.h>
@import Pastel;

@interface ObjCTest : XCTestCase

@end

@implementation ObjCTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.

    PVPastelView *view = [[PVPastelView alloc] initWithFrame:CGRectZero];

    view.startPastelPoint = PVPastelPointBottomLeft;
    view.endPastelPoint = PVPastelPointTopLeft;

    view.animationDuration = 3;

    [view setGradient:[PVPastelGradient youngPassion]];

    NSArray<UIColor *> *colors = @[
                                   [UIColor colorWithRed: 156/255 green: 39/255 blue: 176/255 alpha: 1.0],
                                   [UIColor colorWithRed: 255/255 green: 64/255 blue: 129/255 alpha: 1.0],
                                   [UIColor colorWithRed: 123/255 green: 31/255 blue: 162/255 alpha: 1.0],
                                   [UIColor colorWithRed: 32/255 green: 76/255 blue: 255/255 alpha: 1.0],
                                   [UIColor colorWithRed: 32/255 green: 158/255 blue: 255/255 alpha: 1.0],
                                   [UIColor colorWithRed: 90/255 green: 120/255 blue: 127/255 alpha: 1.0],
                                   [UIColor colorWithRed: 58/255 green: 255/255 blue: 217/255 alpha: 1.0]
                                   ];
    [view setGradient:[PVPastelGradient gradientWithColors:colors]];

    [view startAnimation];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
