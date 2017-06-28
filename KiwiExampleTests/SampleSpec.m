//
//  SampleSpec.m
//  KiwiExample
//
//  Created by Elangbam, Johnson (J.) on 6/27/17.
//  Copyright © 2017 Elangbam, Johnson (J.). All rights reserved.
//


#import "Kiwi.h"
#import "ViewController.h"


SPEC_BEGIN(MathSpec)

__block ViewController *vc = [[ViewController alloc]init];

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

describe(@"Check a string for Palindrome", ^{
    
    
    context(@"When the string is a Palindrome", ^{
        BOOL isPalindrome = [vc isPalindrome:@"aba"];
        it(@"shouls return true", ^{
            [[theValue(isPalindrome) should] equal:theValue(YES)];
            
            
        });
    });
    context(@"When the string is not Palindrome", ^{
        BOOL isPalindrome = [vc isPalindrome:@"abc"];
        it(@"Shouuld return false", ^{
             [[theValue(isPalindrome) should] equal:theValue(NO)];
            
        });
    });
    
});


describe(@"Reverse a string", ^{
    context(@"A string is given", ^{
        NSString *strRev = [vc reverseThisString:@"abcd"];
        
        it(@"should return the reverse", ^{
            [[strRev should]matchPattern:@"dcba"];
        });
    });
});

SPEC_END
