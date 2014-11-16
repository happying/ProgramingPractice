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
        NSInteger aLen = 10, bLen = 10;
        NSInteger* a = [YFCreater createRiseIntArrayFrom:11 setInterval:2 withLength:aLen];
        NSInteger* b = [YFCreater createRiseIntArrayFrom:10 setInterval:2 withLength:bLen];

        NSInteger* final = twoGroupMerges(a, b, aLen, bLen);
        NSArray* firstArray = [YFCreater createRiseNSArrayFrom:0 setInterval:2 withLength:10];
        NSArray* secondArray = [YFCreater createRiseNSArrayFrom:1 setInterval:2 withLength:10];
        NSArray* finalArray =  [TwoGroupMerges twoArrayMergesWithFirstArray:firstArray
                                                                SecondArray:secondArray];
        NSLog(@"%@",finalArray);
        
    }
    return 0;
}




