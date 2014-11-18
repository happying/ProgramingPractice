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
        NSArray* firstArray = [YFCreater createRiseNSArrayFrom:0 setInterval:2 withLength:10];
        NSArray* secondArray = [YFCreater createRiseNSArrayFrom:1 setInterval:2 withLength:10];
        NSArray* finalArray =  [TwoGroupMerges twoArrayMergesWithFirstArray:firstArray
                                                                SecondArray:secondArray];
        NSLog(@"%@",finalArray);
        (void)finalArray;
        NSMutableString* myMutableString = [[NSMutableString alloc] initWithString:@"that"];
        (void)myMutableString;
        NSArray* tmp = [YFCreater createRiseNSArrayFrom:1 setInterval:1 withLength:10];
        (void)tmp;

        
    }
    return 0;
}


