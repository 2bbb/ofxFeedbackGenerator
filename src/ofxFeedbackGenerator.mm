//
//  ofxFeedbackGenerator.cpp
//
//  Created by ISHII 2bit on 2018/05/25.
//

#import <UIKit/UIKit.h>

#include "ofxFeedbackGenerator.h"

namespace ofx {
    void FeedbackGenerator::prepare() const {
        [(UIFeedbackGenerator *)impl prepare];
    }
    
    void ImpactFeedbackGenerator::setup(ImpactFeedbackStyle style) {
        impl = [[UIImpactFeedbackGenerator alloc] initWithStyle:(UIImpactFeedbackStyle)style];
        prepare();
    }
    void ImpactFeedbackGenerator::impactOccured() const {
        [(UIImpactFeedbackGenerator *)impl impactOccurred];
        prepare();
    }
    
    void NotificationFeedbackGenerator::setup() {
        impl = [[UINotificationFeedbackGenerator alloc] init];
        prepare();
    };
    void NotificationFeedbackGenerator::notificationOccured(NotificationFeedbackType type) const {
        [(UINotificationFeedbackGenerator *)impl notificationOccurred:(UINotificationFeedbackType)type];
        prepare();
    }
    
    void SelectionFeedbackGenerator::setup() {
        impl = [[UISelectionFeedbackGenerator alloc] init];
        prepare();
    };
    void SelectionFeedbackGenerator::selectionChanged() const {
        [(UISelectionFeedbackGenerator *)impl selectionChanged];
        prepare();
    }

};
