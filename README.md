## notifyutil

Command-line utility for interacting with the notify notification system and the notifyd server, with some minimal changes. 

Changes include enabling *all* commands that come disabled with Apple's release variant (--dump) and builds for every Darwin platform without requiring any additional resources from [libnotify](https://opensource.apple.com/source/Libnotify/Libnotify-279.40.4/)

The specific configuration in the Makefile is for building on my jailbroken iOS device, but `xcrun -sdk iphoneos clang` should work just fine. 

### Usage

```shell
# do something that requires a notification to be fired to take effect
$ defaults write com.apple.Pasteboard PlaySoundOnPaste -bool YES
# Rather than killing a targeted process, fire a notification when possible as this will not always be an effective option
$ notifyutil -p com.apple.Pasteboard.PlaySoundOnPaste 
```
```shell
# to get a list of all domains that have ever been triggered
$ sudo notifyutil —-dump
# will create notifyd.status in current directory, but
# the file was dumped with root, so run with sudo again
$ sudo cat notifyd.status | grep name | sort -u
```

