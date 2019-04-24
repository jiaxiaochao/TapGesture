# TapGesture
iOS 屏蔽父 View 的点击手势




SourceTree识别（添加）不了新文件夹的问题

在使用SourceTree添加新文件夹的时候，文件夹里边是个 Xcode 项目，把文件夹拉进目录后，发现SourceTree一直没显示修改变化，原因是Xcode生成的工程，可能是勾选了Xocde的git管理（旧Xcode默认就是，新Xcode可选），所以SourceTree认为那个文件夹是被别的git管理，所以加不进去。
解决办法就是把要添加的文件夹里的隐藏文件夹 .git 删除掉。
