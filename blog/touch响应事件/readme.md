# 0512 touch 响应事件

## 响应处理顺序

1. 首先，从下到上 寻找最上层的响应事件的 view

2. 如果最上层 view 没法处理，就 从上到下 依次寻找能够处理 响应事件的 view

    ![](http://img.blog.csdn.net/20151015192629414)

3. 如果最后 UIApplication 不能处理，就抛弃，不处理


## 方法

1. 控制当前 `view` 的点击区域，即，当前 `view` 的部分区域是否可点击
    * [方法 1 处理点击](https://github.com/LionWY/LionWY.github.io/blob/master/blog/touch响应事件/TouchTest/TouchTest/TouchView.m#L22-L30)

    ```
    - (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
    ```

2. 决定处理点击事件的 对象
    * [方法 2 ](https://github.com/LionWY/LionWY.github.io/blob/master/blog/touch响应事件/TouchTest/TouchTest/TouchView.m#L38-L46)
   
    ```
    - (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
    ```




