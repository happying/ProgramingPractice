//
//  YFCreater.m
//  ProgramingPractice
//
//  Created by yufu on 14/11/16.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import "YFCreator.h"


@implementation YFCreater

+(NSArray *)createRiseNSArrayFrom:(NSInteger)num
                             setInterval:(NSInteger)interval
                           withLength:(NSInteger)length{
    
    NSMutableArray* mutableArray = [[NSMutableArray alloc] init];
    
    for (int i = 0 ; i < length; i++) {
        [mutableArray addObject:[NSString stringWithFormat:@"%ld",(long)num]];
        num += interval;
    }
    NSArray* finalArray = [mutableArray copy];
    return finalArray;
}



/*现在将这个方法废弃，因为该方法返回的是一个指针，而不是一个数组，所以并没有任何东西去保护该“数组”，所以该数组中的东西随时都可能被其它东西占用内存，故而当我们读的时候就会读出一些奇奇怪怪的数据解决方案也有，一个是使用结构体，利用结构题来保存数组，或者是封装一个实体类，用以保存数组，只是如果仍然想要用C的数组的话，那么在初始化时就必须分配好足够大的内存，不能根据需要来动态生成，会对内存造成较大的浪费。故而干脆对这个方法废弃
-(NSInteger *)createRiseIntArrayFrom:(NSInteger)num setInterval:(NSInteger)interval withLength:(NSInteger)length{
    
    NSInteger finalArray[length];
    NSInteger * ret;//没有实际意义的参数，主要是用来消除warming，如果直接返回finalArray的话，会有warming提示说，“ Address of stack memory associated with local variable 'finalArray' returned”
    
    for (NSInteger i = 0 ; i < length; i++) {
        finalArray[i] = num;
        num += interval;
    }
    
    ret = finalArray;
    return ret;
}*/

@end
