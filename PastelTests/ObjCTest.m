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
    [view setGradient:[PVPastelGradient dustyGrass]];
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
