## iOS 链式编程

### 先试一个用链式创建一个label
```oc

CGRect frame = CGRectMake(100, 100, 100, 100);
SLObjc *lab = [SLObjc it];
lab.fra(frame).bc(kCol.red).txt(@"测试").tc(kCol.yel).tf(14).ali_l.show(self.view).hid(@1).numL(0);
lab.fra(frame).bc(kCol.red);

```

### 先试一个用链式创建一个Button
```oc

CGRect bf = CGRectMake(100, 220, 100, 100);
SLBtn *btn = [SLBtn it];
btn.frame = bf;
[btn setTitle:@"1321" forState:(UIControlStateNormal)];
[self.view addSubview:btn];
btn.fra(bf).txtN(@"按钮").tf(38).ali(2).show(self.view);

```

链式编程自定义控件日后会越来越多的。

在整个项目中都使用链式写控件话会少写很多重复的代码。

请大家多多指教！

谢谢 大家的参考~
