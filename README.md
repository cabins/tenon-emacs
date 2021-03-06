[English Version](./README.en-US.md)

# 关于项目
> 注意：该项目停止维护，后续所有的代码维护将转到 [cabins/emacs.d](https://github.com/cabins/emacs.d) 

本项目非 GNU Emacs 官方配置，仅作为个人配置项目使用。由 ©Cabins 进行维护。

`榫卯`，中国木工中精巧的连接方式。以此来命名项目，意在说明项目的结构更多的追求优秀插件的连接，搭配。

> 如果你更喜欢简洁风格的Emacs的话，可以参考我的另一个代号为`酸枣`的配置[项目](https://github.com/cabins/.emacs.d)。

# 主要目标

1. 面向Emacs 28以及以上版本；
2. 功能尽可能完善（喜欢简洁的请使用我的另外一个repo，代号酸枣的配置）；
3. 速度尽可能快，尤其是启动速度。

# 编程语言

使用LSP来配置编程环境。安装正确的 Language Server 即可正常工作，无需额外代码（注：个性化配置除外）。

# 字体配置

配置文件位于`list/init-ui.el`中。由于不确定使用者的机器上安装了哪些字体，默认会在一个列表中进行查找。先找到哪个就用哪个。你可以把你喜欢的字体，放在列表的最开始。

> 注意：配置没有适配不同的机器，将来也不会。你只要调整下字号就行。

与其费大力气去找一个通用的方案，不如直接使用这种方法来配置，没有必要浪费这个时间。

# 配置安装

通过命令行进行安装，把以下代码粘贴到终端中运行即可：

```bash
git clone https://github.com/cabins/tenon-emacs ~/.emacs.d
```

> 注意: 如果你使用的是 Windows 平台的话，你需要自行设置一个 HOME 环境变量，否则默认安装到`%AppData%`下。

## 代码测试

本项目已在以下平台测试通过：

- macOS 11.5
- Windows 10

理论上说，应该也通行于其他的平台，如果有问题，可以随时提 Issue。

## 问题排查

> Windows上如果出现闪屏

如果你在Windows 10上发现界面存在闪屏的情况（比如移动光标的时候，或者键入的时候），请检查是否开启了MacType。如果是的话，将Emacs的进程添加到MacType的排除列表中即可，例如在MacType的ini文件中添加如下的代码：

```ini
[UnloadDll]
emacs.exe
runemacs.exe
```

> 如果出现乱码

请使用`all-the-icon`进行字体的补全安装。另外如果是Windows的话，请额外安装Symbola。
