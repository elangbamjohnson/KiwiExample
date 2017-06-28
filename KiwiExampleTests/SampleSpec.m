//
//  SampleSpec.m
//  KiwiExample
//
//  Created by Elangbam, Johnson (J.) on 6/27/17.
//  Copyright © 2017 Elangbam, Johnson (J.). All rights reserved.
//


#import "Kiwi.h"

SPEC_BEGIN(MathSpec)

//describe(@"Math", ^{
//    it(@"is pretty cool", ^{
//        NSUInteger a = 16;
//        NSUInteger b = 26;
//        [[theValue(a + b) should] equal:theValue(42)];
//    });
//});

describe(@"My first Kiwi test", ^{
    context(@"A sample string", ^{
        NSString *greeting = @"Hello, Universe!";
        it(@"should exist", ^{
            [greeting shouldNotBeNil];
            
        });
        it(@"should be 'Hello, Universe'.", ^{
            [[greeting should]equal:@"Hello, Universe!"];
        });
    });
});

SPEC_END
