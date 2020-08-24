#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "Botter.h"
#import "BotterSDK-Bridging-Header.h"
#import "SwiftyGif.h"
#import "Alamofire-umbrella.h"
#import "IQKeyboardManagerSwift-umbrella.h"
#import "Pods-Botter-umbrella.h"

FOUNDATION_EXPORT double BotterVersionNumber;
FOUNDATION_EXPORT const unsigned char BotterVersionString[];

