# LDStoryboardReference

2015年WWDC的iOS9新特性上发现Xcode7上能实现跨Storyboard跳转的东西———StoryboardReference。然而只能在iOS9以上提供支持。

LDStoryboardReference是实现一套简单的StoryboardReference，能支持LDStoryboardPushSegue和LDStoryboardModalSegue。目前已用在支持iOS7上的项目中，并没有出现什么BUG，如有BUG可以联系我。
注：LDStoryboardReference用到"IBInspectable"，该关键字需在Xcode6以上才能在storyboard显示出来。

```obj-c

// 用代码获取ViewController，storyboard文件名：Main.storyboard，storyboard ID：First
FirstViewController *vc = [LDStoryboardReference viewControllerForStoryboardName:@"Main" sceneIdentifier:@"First"];

```

使用Storyboard的教程详看Demo
