# App Store Sales Reports Downloader

This is a Bash script to download sales reports from the App Store from a range of dates.

Before using this script, you have to follow these steps:

1. Create a directory using terminal.
2. Download [`Reporter.jar`](http://help.apple.com/itc/appsreporterguide/#/itcbd9ed14ac) from Apple and store it inside this new directory.
3. Configure `Reporter.properties` according to Apple instructions.
4. Download this script, `sales.sh` to this same directory.

To use this script, type this from terminal:

```sh
./sales.sh INITIAL_DATE FINAL_DATE
```

> dates should be in the format YYYYMMDD

For example:

```sh
./sales.sh 20170701 20170730
```
> will download all sales report from July 1, 2017 to July 30, 2017


This is an alpha version of this script. This is the best I could do because I am not strong on Bash. If you want to improve this, please be my guest.

> Copyright (C) 2017 by Magno Urbano (www.katkay.com)
> Distributed under the GNU General Public License, version 3.0.
> We give no warranties and cannot be liable for any damage on your system
> If you use this you will be using this at your own risk
