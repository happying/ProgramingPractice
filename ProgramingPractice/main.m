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

#define GET_CARRAY_LENGTH(array,len){ len = (sizeof(array)/sizeof(array[0])); }
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[] = {1,3,5,7,9};
        int b[] = {2,4,6,8,10,12};
        int aLen, bLen;
        GET_CARRAY_LENGTH(a, aLen);
        GET_CARRAY_LENGTH(b, bLen);
        twoGroupMerges(a, b, aLen, bLen);
        NSArray* firstArray = [[NSArray alloc] initWithObjects:@"0", @"2", @"4", @"6", @"8", @"10", nil];
        NSArray* secondArray = [NSArray arrayWithObjects:@"1", @"3", @"5", @"7", @"9", nil];
        NSArray* finalArray =  [TwoGroupMerges twoArrayMergesWithFirstArray:firstArray
                                                                SecondArray:secondArray];
        NSLog(@"%@",finalArray);
        
    }
    return 0;
}




