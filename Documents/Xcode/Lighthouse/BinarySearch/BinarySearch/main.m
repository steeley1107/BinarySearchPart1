//
//  main.m
//  BinarySearch
//
//  Created by Steele on 2015-10-20.
//  Copyright © 2015 Steele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "binarySearch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *array = @[@3,@5,@7,@9,@11,@13,@15];
        
        binarySearch *search = [[binarySearch alloc] init];
        
        NSInteger location = [search binarySearchFor:5 min:0 max:(int)[array count] array:array];
        
        NSLog(@"location %ld",(long)location);
        
        
        

        
        
    }
    return 0;
}
