#include "ofxiOS.h"
#include "ofxFeedbackGenerator.h"

class ofApp : public ofxiOSApp {
    ofxImpactFeedbackGenerator feedbackGenerator;
    ofxNotificationFeedbackGenerator notificationFeedback;
public:
    void setup() {
        feedbackGenerator.setup(ofxImpactFeedbackStyle::Heavy);
        notificationFeedback.setup();
        ofSetColor(255, 255, 255);
        ofSetBackgroundColor(0, 0, 0);
    }
    void update() {
        if(ofGetFrameNum() % 120 == 0) {
            notificationFeedback.notificationOccured(ofxNotificationFeedbackType::Error);
        }
    }
    void draw() {
        ofDrawBitmapString("notification error vibration per 120frame", 20, 40);
        ofDrawBitmapString("tap to impact heavy vibration", 20, 40);
    }
    void exit() {}
    
    void touchDown(ofTouchEventArgs & touch) {
        feedbackGenerator.impactOccured();
    }
    void touchMoved(ofTouchEventArgs & touch) {}
    void touchUp(ofTouchEventArgs & touch) {}
    void touchDoubleTap(ofTouchEventArgs & touch) {}
    void touchCancelled(ofTouchEventArgs & touch) {}
    
    void lostFocus() {}
    void gotFocus() {}
    void gotMemoryWarning() {}
    void deviceOrientationChanged(int newOrientation) {}
    
};

int main() {
    
    //  here are the most commonly used iOS window settings.
    //------------------------------------------------------
    ofiOSWindowSettings settings;
    settings.enableRetina = false; // enables retina resolution if the device supports it.
    settings.enableDepth = false; // enables depth buffer for 3d drawing.
    settings.enableAntiAliasing = false; // enables anti-aliasing which smooths out graphics on the screen.
    settings.numOfAntiAliasingSamples = 0; // number of samples used for anti-aliasing.
    settings.enableHardwareOrientation = false; // enables native view orientation.
    settings.enableHardwareOrientationAnimation = false; // enables native orientation changes to be animated.
    settings.glesVersion = OFXIOS_RENDERER_ES1; // type of renderer to use, ES1, ES2, ES3
    settings.windowMode = OF_FULLSCREEN;
    ofCreateWindow(settings);
    
    return ofRunApp(new ofApp);
}

