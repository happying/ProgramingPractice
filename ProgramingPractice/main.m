//
//  main.m
//  ProgramingPractice
//
//  Created by yufu on 14/11/15.
//  Copyright (c) 2014年 yufu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sys/time.h>

#define GET_CARRAY_LENGTH(array,len){ len = (sizeof(array)/sizeof(array[0])); }

int* twoGroupMerges(int *a, int *b, int aLen, int bLen){
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
    return c;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[] = {1,3,5,7,9};
        int b[] = {2,4,6,8,10,12};
        int aLen, bLen;
        GET_CARRAY_LENGTH(a, aLen);
        GET_CARRAY_LENGTH(b, bLen);
        int *c;
        c = twoGroupMerges(a, b, aLen, bLen);
        for (int i = 0; i< aLen + bLen; i++) {
            NSLog(@"%d",c[i]);
        }
        
        
              
        
        
    }
    return 0;
}




