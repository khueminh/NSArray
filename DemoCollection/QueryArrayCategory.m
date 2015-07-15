//
//  QueryArrayCategory.m
//  DemoCollection
//
//  Created by Nguyen Minh Khue on 7/15/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "QueryArrayCategory.h"
#import "NSArrayCategory.h"

@interface QueryArrayCategory ()

@end

@implementation QueryArrayCategory

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray* DuLieu = [NSArray arrayWithObjects:@1, @2, @3, @4, @5, @5, @2, @6, @8, @7, @3, @9, @10, nil];
    
    NSArray* randomObject = [DuLieu RemoveDuplicateItems];
    //NSArray* randomObject = [DuLieu GetDuplicateItems];
    //NSArray* randomObject = [DuLieu distinctArray];
    int DemSL = 0;
    
    for (NSString* item in randomObject) {
        DemSL++;
        NSString* outputStr = [NSString stringWithFormat:@"%i. %@", DemSL, item];
        [self writeln:outputStr];
        
    }
}

@end
