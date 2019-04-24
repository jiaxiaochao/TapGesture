# TapGesture
iOS 屏蔽父 View 的点击手势

设计弹窗效果时 
1、bgView添加点击事件：tap（弹窗消失）
2、bgView添加弹窗contentView控制大小

but：
contentView也很响应bgView的响应事件

可以通过设置点击手势的代理方法，确定父view上的点击手势什么时候响应



