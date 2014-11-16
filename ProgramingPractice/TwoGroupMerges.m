//
//  TwoGroupMerges.m
//  ProgramingPractice
//
//  Created by yufu on 14/11/15.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import "TwoGroupMerges.h"

@implementation TwoGroupMerges

+(NSMutableArray *)twoArrayMergesWithFirstArray:(NSArray *)firstArray SecondArray:(NSArray *)secondArray{
    NSMutableArray* mergesArray = [[NSMutableArray alloc] init] ;
    int i, j;//i for firstArray and j for secondArray
    
    for (i = 0, j = 0; i < firstArray.count && j < secondArray.count; ) {
        if ([firstArray[i] intValue] < [secondArray[j] intValue]) {
            [mergesArray addObject:firstArray[i]];
            i++;
        }
        else{
            [mergesArray addObject:secondArray[j]];
            j++;
        }
    }
    for (; i < firstArray.count; i++) {
        [mergesArray addObject:firstArray[i]];
    }
    for (; j < secondArray.count; j++) {
        [mergesArray addObject:secondArray[j]];
    }
    return mergesArray;
}

void twoGroupMerges(int *a, int *b, int aLen, int bLen){
    int i, j, k = 0;//i for a[],j for b[] and k for c[]
    int c[aLen+bLen];
    for (i=0,j=0; i<aLen&&j<bLen; ) {
        if (a[i] < b[j]) {
            c[k] = a[i];
            i++;
        }
        else{
            c[k] = b[j];
            j++;
        }
        k++;
    }
    if (j < bLen) {
        for (; j<bLen; j++,k++) {
            c[k] = b[j];
        }
    }
    if (i<aLen) {
        for (; i < aLen; i++,k++) {
            c[k] = a[i];
        }
    }
    for (int i = 0; i< aLen + bLen; i++) {
        NSLog(@"%d",c[i]);
    }
}


@end
