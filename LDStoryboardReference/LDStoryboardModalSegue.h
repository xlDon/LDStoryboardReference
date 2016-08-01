//
//  LDStoryboardModalSegue.h
//  LDStoryboardReference
//
//  Created by xlDon on 16/8/1.
//  Copyright © 2016年 xlDon. All rights reserved.
//

#import "LDStoryboardSegue.h"

@interface LDStoryboardModalSegue : LDStoryboardSegue

@property (nonatomic) UIModalPresentationStyle presentationStyle;
@property (nonatomic) UIModalTransitionStyle transitionStyle;
@property (nonatomic, copy) dispatch_block_t completion;

@end
