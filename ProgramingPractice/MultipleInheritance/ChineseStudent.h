//
//  ChineseStudent.h
//  ProgramingPractice
//
//  Created by yufu on 14/11/18.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chinese.h"
#import "Student.h"
#import "ProtocolChineseStudent.h"

@interface ChineseStudent : NSObject<ProtocolChineseStudent>
@property(strong,nonatomic) Chinese* ch;
@property(strong,nonatomic) Student* stu;
@end
