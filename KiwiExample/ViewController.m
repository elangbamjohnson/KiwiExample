//
//  ViewController.m
//  KiwiExample
//
//  Created by Elangbam, Johnson (J.) on 6/26/17.
//  Copyright © 2017 Elangbam, Johnson (J.). All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *reversedString = [self reverseThisString:@"abcd"];
    NSLog(@"%@",reversedString);
    NSLog(@"%d",[self isPalindrome:@"abc"]);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)reverseThisString:(NSString *)stringToReverse {
    
    NSMutableString *reversedStr = [NSMutableString string];
    
    NSInteger charInd = [stringToReverse length];
    
    while (charInd > 0) {
        charInd--;
        NSRange subStrRange = NSMakeRange(charInd, 1);
        [reversedStr appendString:[stringToReverse substringWithRange:subStrRange]];
    }
    
    return reversedStr;
    
}

-(BOOL)isPalindrome:(NSString *)string{
    NSInteger len = [string length];
    for (int i = 0; i < len/2; i++) {
        if ([string characterAtIndex:i] != [string characterAtIndex:len-1-i]) {
            return NO;
        }
        
    }
    return YES;
    
}



@end
