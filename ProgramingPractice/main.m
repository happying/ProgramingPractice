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
#import "ChineseStudent.h"
#import "ProtocolChineseStudent.h"
#import "BadStudent.h"
#import "GoodStudent.h"

#define GET_CARRAY_LENGTH(array,len){ len = (sizeof(array)/sizeof(array[0])); }


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ChineseStudent* student = [[ChineseStudent alloc] init];
        BadStudent* badStudent = [[BadStudent alloc] initWithDelegate:student];
        GoodStudent* goodStudent = [[GoodStudent alloc] init];
        goodStudent.myDelegate = student;
        [badStudent iCantButMyDelegaterCan];
        [goodStudent iCantButSomeBadBoyCan];
        
    }
    return 0;
}


