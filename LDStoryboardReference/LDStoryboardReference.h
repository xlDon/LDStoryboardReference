//
//  LDStoryboardReference.h
//  LDStoryboardReference
//
//  Created by xlDon on 16/8/1.
//  Copyright © 2016年 xlDon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LDStoryboardReference : UIViewController

/**
 *  Storyboard文件名
 *
 *  The name of the storyboard that should be referenced.
 *  This should be set in the Interface Builder identity inspector.
 */
@property (nonatomic, copy) IBInspectable NSString *storyboardName;

/**
 *  ViewController标识
 *
 *  The identifier of the scene to show.
 *  This should be set in the Interface Builder identity inspector.
 */
@property (nonatomic, copy) IBInspectable NSString *sceneIdentifier;

/**
 *  从Storyboard中加载初始ViewController
 */
+ (__kindof UIViewController *)viewControllerForReference:(LDStoryboardReference *)reference;

/**
 *  从Storyboard中加载初始ViewController
 *  @param storyboardName Storyboard文件名
 */
+ (__kindof UIViewController *)viewControllerForStoryboardName:(NSString *)storyboardName;

/**
 *  从Storyboard中加载ViewController
 *  @param storyboardName Storyboard文件名
 *  @param sceneIdentifier ViewController标识
 */
+ (__kindof UIViewController *)viewControllerForStoryboardName:(NSString *)storyboardName sceneIdentifier:(NSString *)sceneIdentifier;

@end
