//
//  NSArrayCategory.m
//  DemoCollection
//
//  Created by Nguyen Minh Khue on 7/15/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "NSArrayCategory.h"

@implementation NSArray (Shuffle)

- (NSArray*) distinctArray
{
    // create temporary autoreleased mutable array
    NSMutableArray *tmpArray = [NSMutableArray arrayWithCapacity:[self count]];
    
    for (id anObject in self)
    {
        NSUInteger randomPos = arc4random()%([tmpArray count]+1);
        if ( ! [tmpArray containsObject: anObject] )
        {
            [tmpArray insertObject:anObject atIndex:randomPos];
        }
    }
    
    return [NSArray arrayWithArray:tmpArray];  // non-mutable autoreleased copy
}

- (NSArray*) GetDuplicateItems
{
    NSCountedSet *saveArray = [[NSCountedSet alloc] initWithArray:self];
    
    NSMutableArray *tmpArray = [[NSMutableArray alloc] init];
    
    for (id num in saveArray){
        if([saveArray countForObject:num]>1)
            [tmpArray addObject:num];
    }
    
    return [NSArray arrayWithArray:tmpArray];  // non-mutable autoreleased copy
}

- (NSArray*) RemoveDuplicateItems
{
    NSCountedSet *saveArray = [[NSCountedSet alloc] initWithArray:self];
    
    NSMutableArray *tmpArray = [[NSMutableArray alloc] init];
    
    for (id num in saveArray){
        if([saveArray countForObject:num]==1)
            [tmpArray addObject:num];
    }
    
    return [NSArray arrayWithArray:tmpArray];  // non-mutable autoreleased copy
}

@end
