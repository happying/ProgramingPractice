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


/*现在将这个方法废弃，因为该方法返回的是一个指针，而不是一个数组，所以并没有任何东西去保护该“数组”，所以该数组中的东西随时都可能被其它东西占用内存，故而当我们读的时候就会读出一些奇奇怪怪的数据解决方案也有，一个是使用结构体，利用结构题来保存数组，或者是封装一个实体类，用以保存数组，只是如果仍然想要用C的数组的话，那么在初始化时就必须分配好足够大的内存，不能根据需要来动态生成，会对内存造成较大的浪费。故而干脆对这个方法废弃

+(NSInteger *)twoCIntArrayMergesWithFirstArray:(NSInteger *)firstArray FirstArrayLen:(NSInteger)firstArrayLen
                                   SecondArray:(NSInteger *)secondArray SecondArrayLen:(NSInteger)secondArrayLen{
    NSInteger i, j, k = 0;//i for firstArray[],j for b[] and k for c[]
    NSInteger c[firstArrayLen + secondArrayLen];
    NSInteger* final;//没有实际意义的参数，主要是用来消除warming，如果直接返回c的话，会有warming提示说，“ Address of stack memory associated with local variable 'c' returned”
    for (i=0,j=0; i<firstArrayLen&&j<secondArrayLen; ) {
        if (firstArray[i] < secondArray[j]) {
            c[k] = firstArray[i];
            i++;
        }
        else{
            c[k] = secondArray[j];
            j++;
        }
        k++;
    }
    if (j < secondArrayLen) {
        for (; j<secondArrayLen; j++,k++) {
            c[k] = secondArray[j];
        }
    }
    if (i<firstArrayLen) {
        for (; i < firstArrayLen; i++,k++) {
            c[k] = firstArray[i];
        }
    }
    
    for (int i = 0; i < firstArrayLen+secondArrayLen; i++) {
        NSLog(@"%ld",(long)c[i]);
    }
    final = c;
    return final;
}
 */




@end
