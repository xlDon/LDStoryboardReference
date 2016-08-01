//
//  LDStoryboardSegue.m
//  LDStoryboardReference
//
//  Created by xlDon on 16/8/1.
//  Copyright © 2016年 xlDon. All rights reserved.
//

#import "LDStoryboardSegue.h"
#import "LDStoryboardReference.h"

@implementation LDStoryboardSegue

- (instancetype)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
{
    NSAssert([destination isKindOfClass:[LDStoryboardReference class]], @"LDStoryboardSegue can only be used with a LDStoryboardReference as seque destination.");
    
    UIViewController *actualDestination = [LDStoryboardReference viewControllerForReference:(LDStoryboardReference *)destination];
    self = [super initWithIdentifier:identifier source:source destination:actualDestination];
    if (self)
    {
        self.animated = YES;
    }
    
    return self;
}

@end
