//
//  YFCreater.h
//  ProgramingPractice
//
//  Created by yufu on 14/11/16.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YFCreater : NSObject
//构建一个升序的以interval为间隔的，从num开始的，长度为length的NSArray
-(NSArray*)createRiseNSArrayFrom:(NSInteger)num
                            setInterval:(NSInteger)interval
                          withLength:(NSInteger)length;

//构建一个升序的以interval为间隔的，从num开始的，长度为length的C的INT数组
/*现在将这个方法废弃，因为该方法返回的是一个指针，而不是一个数组，所以并没有任何东西去保护该“数组”，所以该数组中的东西随时都可能被其它东西占用内存，故而当我们读的时候就会读出一些奇奇怪怪的数据解决方案也有，一个是使用结构体，利用结构题来保存数组，或者是封装一个实体类，用以保存数组，只是如果仍然想要用C的数组的话，那么在初始化时就必须分配好足够大的内存，不能根据需要来动态生成，会对内存造成较大的浪费。故而干脆对这个方法废弃*/
//-(NSInteger*)createRiseIntArrayFrom:(NSInteger)num
//                     setInterval:(NSInteger)interval
//                      withLength:(NSInteger)length;

@end
