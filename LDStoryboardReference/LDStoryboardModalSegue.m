//
//  LDStoryboardModalSegue.m
//  LDStoryboardReference
//
//  Created by xlDon on 16/8/1.
//  Copyright © 2016年 xlDon. All rights reserved.
//

#import "LDStoryboardModalSegue.h"

@implementation LDStoryboardModalSegue

- (instancetype)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
{
    if (self = [super initWithIdentifier:identifier source:source destination:destination])
    {
        self.presentationStyle = destination.modalPresentationStyle;
        self.transitionStyle = destination.modalTransitionStyle;
    };
    return self;
}

- (void)perform
{
    [self.destinationViewController setModalPresentationStyle:self.presentationStyle];
    [self.destinationViewController setModalTransitionStyle:self.transitionStyle];
    
    [self.sourceViewController presentViewController:self.destinationViewController
                                            animated:self.animated
                                          completion:self.completion];
}

@end
