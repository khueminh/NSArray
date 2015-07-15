//
//  NSArrayCategory.h
//  DemoCollection
//
//  Created by Nguyen Minh Khue on 7/15/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Shuffle)
- (NSArray*) distinctArray;
- (NSArray*) GetDuplicateItems;
- (NSArray*) RemoveDuplicateItems;
@end
