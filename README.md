# DisplayAdsSDK iOS

Display ads SDK for AdPlayerLite iOS.

## Requirements
 * iOS >= 15.0
 * AdPlayerLite >= 1.15.0 (resolved automatically by SPM)

## Integration

### Swift Package Manager

Add this repository URL in Xcode:
```
https://github.com/Aniview/display-ads-ios-spm.git
```

### Usage

```swift
import AdPlayerLite
import DisplayAds

// At app launch, register the display ads provider:
AdPlayer.setDisplayProvider(DisplayAdsProvider())
```

## Sample project
[AdPlayerLiteSample](https://github.com/Aniview/ad-player-lite-ios-example)
