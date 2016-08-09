# LDStoryboardReference

2015年WWDC的iOS9新特性上发现Xcode7上能实现跨Storyboard跳转的东西———StoryboardReference。然而只能在iOS9以上提供支持。

LDStoryboardReference是实现一套简单的StoryboardReference，能支持LDStoryboardPushSegue和LDStoryboardModalSegue。目前已用在支持iOS7上的项目中，并没有出现什么BUG，如有BUG可以联系我。
注：LDStoryboardReference用到"IBInspectable"，该关键字需在Xcode6以上才能在storyboard显示出来。

```obj-c

// 用代码获取ViewController，storyboard文件名：Main.storyboard，storyboard ID：First
FirstViewController *vc = [LDStoryboardReference viewControllerForStoryboardName:@"Main" sceneIdentifier:@"First"];

```

####使用Storyboard的教程

1.首先拖一个ViewController,将它的类改为`LDStoryboardReference`。把它的View删掉，因为我们只是作为一个引用并不需要它自身的View；
![image](https://github.com/xlDon/LDStoryboardReference/raw/master/TutorialImage/referenceVC.png)

2.标明它的storyboardName以及sceneIdentifier.
![image](https://github.com/xlDon/LDStoryboardReference/raw/master/TutorialImage/setting.png)

sceneIdentifier就是在另一个被引用storyboard的Storyboard ID如下图。
![image](https://github.com/xlDon/LDStoryboardReference/raw/master/TutorialImage/citedVC.png)

3.然后就是拖拽segue的时候要选择`storyboard modal` 或者 `storyboard push`.
![image](https://github.com/xlDon/LDStoryboardReference/raw/master/TutorialImage/segue.png)