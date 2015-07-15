//
//  Football.m
//  DemoCollection
//
//  Created by Nguyen Minh Khue on 7/15/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Football.h"

@implementation Football

- (instancetype) initName: (NSString*) fullNameF andNumber: (NSNumber*) numberF andPosition: (NSString*) positionF {
    if (self = [super init]) {
        self.FullName = fullNameF;
        self.Number = numberF;
        self.Position = positionF;
    }
    return self;
}

- (BOOL) isEqual:(id)object {
    if ([object isMemberOfClass: [Football class]]) {
        Football* temp = (Football*) object;
        if ([self.FullName isEqual:temp.FullName] && [self.Number isEqual:temp.Number] && [self.Position isEqual:temp.Position]) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

@end
