# ofxFeedbackGenerator

wrapper of UIFeedbackGenerator haptic engine on iOS.

## Requirements

- iOS 10~ 

## API

### class ofxImpactFeedbackGenerator

* void setup(ofxImpactFeedbackStyle style);
* void impactOccured();

#### enum class ofxImpactFeedbackStyle

* `ofxImpactFeedbackStyle::Light`
* `ofxImpactFeedbackStyle::Medium`
* `ofxImpactFeedbackStyle::Heavy`

----

### class ofxNotificationFeedbackGenerator 

* void setup();
* void notificationOccured(ofxNotificationFeedbackType type);

#### enum class ofxNotificationFeedbackType

* `ofxNotificationFeedbackType::Success`
* `ofxNotificationFeedbackType::Warning`
* `ofxNotificationFeedbackType::Error` 

----

### class ofxSelectionFeedbackGenerator

* void setup();
* void selectionChanged();

## Update history

### 2018/05/25 ver 0.0.1

## License

MIT License.

## Author

* ISHII 2bit
* i[at]2bit.jp

## At the last

Please create a new issue if there is a problem.

And please throw a pull request if you have a cool idea!!

If you get happy with using this addon, and you're rich, please donation for support continuous development.

Bitcoin: `17AbtW73aydfYH3epP8T3UDmmDCcXSGcaf`

