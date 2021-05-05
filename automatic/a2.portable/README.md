# <img src="https://cdn.jsdelivr.net/gh/ewerybody/a2@master/ui/res/a2.svg" width="48" height="48"/> [a2.portable](https://chocolatey.org/packages/a2.portable)

[**Autohotkey**](http://ahkscript.org) is an awesome little scripting language to automate and simplify all things Windows.\
**a2** helps getting AutoHotkey scripts, updating them, and developing your own.

Basically, a2 is an **Autohotkey runtime** that you can conveniently configure with a Graphical User Interface (GUI based on [Qt for Python](https://wiki.qt.io/Qt_for_Python)).

See [the Wiki](https://github.com/ewerybody/a2/wiki) for more information especially:
* [How to use a2](https://github.com/ewerybody/a2/wiki/How-to-use-a2).
* [How to develop a2](https://github.com/ewerybody/a2/wiki/How-to-develop-a2).

The features in this runtime are introduced via **modules** bundled in **packages**. Each module can have various script files and is presented with its own configuration frontend to setup shortcuts, variables etc. These frontends are comprised of reusable elements that developers can easily arrange.

## a2 main loop layout:
![](https://i.imgur.com/zyv1mUb.gif)

## STABLE vs DEV
a2's development is currently in alpha stage.
The current development releases are offered as pre-release packages on chocolatey. Get the latest pre-release by using `choco install a2.portable --pre`.

## Package Parameters

* `/InstallationPath:` - Where to install the binaries to - defaults to "`$env:ChocolateyToolsLocation`"
* `/TaskBarIcon` - Creates an item for the a2 GUI in the task bar.

To have choco remember parameters on upgrade, be sure to set `choco feature enable -n=useRememberedArgumentsForUpgrades`.

### Installation Path
a2 software unpacks into the _ChocolateyToolsLocation\\a2.portable_ folder by default.
It's not unpacking into the default chocolatey portable package location (_C:\\ProgramData\\chocolatey\\lib\\_).
a2 creates data within its folder on first startup and when downloading or updating modules.
UAC and antivirus protection may block this behavior in _ProgramData_.

You can change the destination by using package parameters.
To pass parameters, use `--params "''"` (e.g. `choco install a2.portable [other options] --params "'/InstallationPath:C:\temp\someFolder'"`).

Make sure you unpack a2 to a folder that requires no admin permissions.

## Support
[![Join the Discussion](https://img.shields.io/badge/Github-join%20discussion-orange?style=flat-square&logo=github)](https://github.com/ewerybody/a2/discussions)
[![Join the chat at https://gitter.im/ewerybody/a2](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ewerybody/a2?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Join the chat on Telegram](https://cdn.jsdelivr.net/gh/ewerybody/a2@master/ui/res/telegram_join.svg)](https://t.me/a2script_de)
