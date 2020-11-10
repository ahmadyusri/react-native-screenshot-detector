
# Copy From <https://github.com/blend/react-native-screenshot-detector>

# react-native-screenshot-detector

Note: this project is designed to work with the newer version of React Native library imports, i.e. React Native >= 0.40.0

## Getting started

`$ npm install git://github.com/ahmadyusri/react-native-screenshot-detector.git#0.0.1 --save`

`$ cd ios && pod install && cd ../`


## Usage

# iOS
```objectivec
#import <RNScreenshotDetector/RNScreenshotDetector.h>

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // ... setup code

  // Somewhere React Native will have placed something like
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL...]

  // Somewhere below this you can setup the screenshot detector to listen for events
  RNScreenshotDetector* screenshotDetector = [[RNScreenshotDetector alloc] init];
  [screenshotDetector setupAndListen:rootView.bridge];
}
```

# In JS
```javascript
import * as ScreenshotDetector from 'react-native-screenshot-detector';

// Subscribe callback to screenshots:
this.eventEmitter = ScreenshotDetector.subscribe(function() { ... });

// Unsubscribe later (a good place would be componentWillUnmount)
ScreenshotDetector.unsubscribe(this.eventEmitter);
```
  