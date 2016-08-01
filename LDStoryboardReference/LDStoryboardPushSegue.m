//
//  LDStoryboardPushSegue.m
//  LDStoryboardReference
//
//  Created by xlDon on 16/8/1.
//  Copyright © 2016年 xlDon. All rights reserved.
//

#import "LDStoryboardPushSegue.h"

@implementation LDStoryboardPushSegue

- (void)perform
{
    UINavigationController *navigationController = nil;
    
    if ([self.sourceViewController isKindOfClass:[UINavigationController class]])
    {
        navigationController = self.sourceViewController;
    }
    else
    {
        navigationController = [self.sourceViewController navigationController];
    }
    
    [navigationController pushViewController:self.destinationViewController animated:self.animated];
}

@end
