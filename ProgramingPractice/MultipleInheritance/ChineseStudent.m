//
//  ChineseStudent.m
//  ProgramingPractice
//
//  Created by yufu on 14/11/18.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import "ChineseStudent.h"

@interface ChineseStudent ()

@end

@implementation ChineseStudent


-(Student *)stu{
    if (!_stu) {
        _stu = [[Student alloc] init];
    }
    return _stu;
}


-(Chinese *)ch{
    if (!_ch) {
        _ch = [[Chinese alloc] init];
    }
    return _ch;
}


-(void)learn{
    [self.stu learn];
}

-(void)play{
    [self.stu play];
}

-(void)speakChinese{
    [self.ch speakChinese];
}

-(void)speakEnglish{
    [self.ch speakEnglish];
}

-(void)afterSchoolStudy{
    NSLog(@"After school I was too tired to learn playing the piano ,but I have to.");
}

@end
