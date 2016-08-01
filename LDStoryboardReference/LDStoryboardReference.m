//
//  LDStoryboardReference.m
//  LDStoryboardReference
//
//  Created by xlDon on 16/8/1.
//  Copyright © 2016年 xlDon. All rights reserved.
//

#import "LDStoryboardReference.h"

@implementation LDStoryboardReference

+ (UIViewController *)viewControllerForStoryboardName:(NSString *)storyboardName
{
    return [self viewControllerForStoryboardName:storyboardName sceneIdentifier:nil];
}

+ (UIViewController *)viewControllerForReference:(LDStoryboardReference *)reference
{
    return [self viewControllerForStoryboardName:reference.storyboardName sceneIdentifier:reference.sceneIdentifier];
}

+ (UIViewController *)viewControllerForStoryboardName:(NSString *)storyboardName sceneIdentifier:(NSString *)sceneIdentifier
{
    NSAssert(storyboardName.length > 0, @"Unable to load referenced storyboard.");
    
    static NSMutableDictionary *s_storyboardPool = nil;
    if (!s_storyboardPool)
    {
        s_storyboardPool = [NSMutableDictionary dictionaryWithCapacity:10];
    }
    
    UIStoryboard *storyboard = s_storyboardPool[storyboardName];
    if (!storyboard)
    {
        storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
        s_storyboardPool[storyboardName] = storyboard;
    }
    
    if ([sceneIdentifier length] == 0)
    {
        return [storyboard instantiateInitialViewController];
    }
    else
    {
        return [storyboard instantiateViewControllerWithIdentifier:sceneIdentifier];
    }
}

@end
