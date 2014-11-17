//
//  main.m
//  ProgramingPractice
//
//  Created by yufu on 14/11/15.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sys/time.h>
#import "TwoGroupMerges.h"
#import "YFCreator.h"



#define GET_CARRAY_LENGTH(array,len){ len = (sizeof(array)/sizeof(array[0])); }


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray* firstArray = [[[YFCreater alloc] init] createRiseNSArrayFrom:11 setInterval:2 withLength:10];
        NSArray* secondArray = [[[YFCreater alloc]init] createRiseNSArrayFrom:1 setInterval:2 withLength:10];
        NSArray* finalArray =  [TwoGroupMerges twoArrayMergesWithFirstArray:firstArray
                                                                SecondArray:secondArray];
        (void)finalArray;
        NSLog(@"%lu",sizeof(NSInteger));
        NSMutableString* myMutableString = [[NSMutableString alloc] initWithString:@"this is a mutable string"];
        NSString* myString = @"this is a mutable string";
        NSRange* range = [];
        
    }
    return 0;
}


