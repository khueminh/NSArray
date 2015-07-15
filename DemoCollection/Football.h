//
//  Football.h
//  DemoCollection
//
//  Created by Nguyen Minh Khue on 7/15/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Football : NSObject
@property (nonatomic, strong) NSString *Number;
@property (nonatomic, strong) NSString *Position;
@property (nonatomic, strong) NSString *FullName;

-(instancetype) initName: (NSString*) fullNameF andNumber: (NSNumber*) numberF andPosition: (NSString*) positionF;
@end
