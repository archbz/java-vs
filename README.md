# java-version-switcher
Windows系统下快速切换Java版本。

## 使用方法

### 1. 配置环境变量

克隆本工程至本地。

```shell
git clone https://github.com/studeyang/java-vs.git
```

设置 `scripts` 目录至环境变量（推荐手动设置）。

经过win10以上测试，ps1脚本有效，bat脚本未经测试。

maven暂时没有切换版本的需求，故只对jdk版本进行设置。

```shell
set Path=%JAVA_HOME%\bin;%MAVEN_HOME%\bin;%Path%
```

### 2. 配置Java安装路径

编辑`scripts/javaX.ps1`文件，更改其中需要配置的行，配置本地 Java 安装路径。

```shell
	"Java 8" { $env:JAVA_HOME = "引号内为当前pc该版本jdk实际目录" }
```

### 3. 执行切换

以管理员方式打开 cmd。

```shell
java17 perm
```

如果不加 perm (permanence) 则表示只在当前 cmd 窗口有效。

### 4. 升级命令

增加maven_upgrade和gradle_upgrade命令。

```shell
maven_upgrade 当前版本maven目录
grade_upgrade 当前版本grade目录
```

将当前版本目录作为参数（参数和命令之间以空格分隔）附在命令后即可。


## PS. 出现“此系统上禁止运行脚本”的问题

在管理员 cmd 窗口下输入如下命令行即可改变相关设置。

```shell
set-executionpolicy remotesigned
```
