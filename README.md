# Pointless App
A simple app testing iOS 8's Today Widget API. The app literally serves no purpose.

## What it looks like
![](http://i.imgur.com/ZcOcxwm.gif)

The GIF above was recorded on the iPhone Simulator running iOS 8.2.

## Written in entirely Objective-C!
Or Cocoa, however you call it.

## Requires iOS 8.0 or newer
The Today Widget API is only supported on iOS 8 or newer.

## How to use this thing
1. Click **Download ZIP** or [click here](https://github.com/theawesomecoder61/Pointless-App/archive/master.zip).
2. Open Xcode (if you have a Mac) and run the **.xcodeproj** file
3. **Note!** There is no developer or certificate linked to the project, so you could upload the app to the App Store if you'd like

## Tip
If you want to remove the left padding, replace this inside **TodayViewController.m**:
```objectivec
- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)margins {
   margins.bottom = 10.0;
   return margins;
}
```
with:
```objectivec
- (UIEdgeInsets)widgetMarginInsetsForProposedMarginInsets:(UIEdgeInsets)margins {
   return UIEdgeInsetsZero;
}
```

## Credits
**I don't need any credit for this! Don't even mention my name, it's all yours!**

Nyan Cat is owned by Christopher Torres.
