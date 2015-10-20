//
//  binarySearch.m
//  BinarySearch
//
//  Created by Steele on 2015-10-20.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "binarySearch.h"

@implementation binarySearch

- (NSInteger)binarySearchFor:(int)searchItem  min:(int)min max:(int)max array:(NSArray *)array {
    
    NSInteger targetNumber = searchItem;
    NSInteger peakInValue;
    
    NSInteger minIndex = min;
    NSInteger maxIndex = max;
    NSInteger midIndex = (minIndex + maxIndex) / 2;
    
    peakInValue = [[array objectAtIndex:midIndex ] integerValue];
    
    
    if (peakInValue == targetNumber) {
        return midIndex;
    }
    else if (peakInValue <= targetNumber) {
        minIndex = midIndex + 1;
        return [self binarySearchFor:searchItem min:(int)minIndex max:(int)maxIndex array:array];
    }
    else if (peakInValue >= targetNumber) {
        maxIndex = midIndex - 1;
        return [self binarySearchFor:searchItem min:(int)minIndex max:(int)maxIndex array:array];
    }
    
    return -1;

}

@end
