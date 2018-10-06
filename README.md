# QQVoiceDemo
高仿QQ录音功能模块

本篇代码实现的功能：
- 1、封装AVAudioRecorder以及AVAudioPlayer实现录音以及播放功能。
- 2、实现录音以及播放时的振幅动画。
- 3、播放时环形进度条的动画。
- 4、变声效果。

简单的介绍一下实现：
[高仿QQ录音功能模块实现](https://juejin.im/post/5a3bc79ff265da43152415f6) 

![对讲界面](https://github.com/ChavezChen/QQVoiceDemo/blob/master/对讲界面.gif)

![录音界面](https://github.com/ChavezChen/QQVoiceDemo/blob/master/录音界面.gif)

![变声界面](https://github.com/ChavezChen/QQVoiceDemo/blob/master/变声界面.gif)


优化以下5项：
- 1、删除因录音时间太短产生的垃圾文件； 
- 2、解决对讲页面手指触摸按钮时滑动不灵活的问题；
- 3、解决变声页面、对讲页面快速点击录音按钮后自动播放问题；
- 4、当音频时间特别短时，Crash问题修复；
- 5、增加录制音频最大时长限制；
