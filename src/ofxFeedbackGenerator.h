//
//  ofxFeedbackGenerator.hpp
//
//  Created by ISHII 2bit on 2018/05/25.
//

#ifndef ofxFeedbackGenerator_h
#define ofxFeedbackGenerator_h

#include <stdio.h>

namespace ofx {
    struct FeedbackGenerator {
        virtual void prepare() const;
    protected:
        void *impl;
    };
    
    enum class ImpactFeedbackStyle {
        Light,
        Medium,
        Heavy
    };
    struct ImpactFeedbackGenerator : FeedbackGenerator {
        void setup(ImpactFeedbackStyle style);
        void impactOccured() const;
    };
    
    enum class NotificationFeedbackType {
        Success,
        Warning,
        Error,
    };
    struct NotificationFeedbackGenerator : FeedbackGenerator {
        void setup();
        void notificationOccured(NotificationFeedbackType type) const;
    };
    
    struct SelectionFeedbackGenerator : FeedbackGenerator {
        void setup();
        void selectionChanged() const;
    };
}

using ofxFeedbackGenerator = ofx::FeedbackGenerator;

using ofxImpactFeedbackStyle = ofx::ImpactFeedbackStyle;
using ofxImpactFeedbackGenerator = ofx::ImpactFeedbackGenerator;

using ofxNotificationFeedbackType = ofx::NotificationFeedbackType;
using ofxNotificationFeedbackGenerator = ofx::NotificationFeedbackGenerator;

using ofxSelectionFeedbackGenerator = ofx::SelectionFeedbackGenerator;

#endif /* ofxFeedbackGenerator_h */
