//
//  Number2Word.m
//  DemoCollection
//
//  Created by Nguyen Minh Khue on 7/16/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Number2Word.h"

@interface Number2Word ()

@end

@implementation Number2Word

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle: NSNumberFormatterSpellOutStyle];
 
    NSArray* DuLieu = [NSArray arrayWithObjects:@1, @21, @30, @47, @5, @54, @2, @68, @8, @7, @23, @9, @10, nil];
    
    int currentValue;
    for (int i = 0; i < [DuLieu count]; i++)
    {
        currentValue = [(NSNumber *)[DuLieu objectAtIndex:i] intValue];
        NSString* numberString = [formatter stringFromNumber:[NSNumber numberWithInt: currentValue]];
       
        NSString* outputStr = [NSString stringWithFormat:@"%d --> %@", currentValue, numberString];
        [self writeln:outputStr];
     }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
