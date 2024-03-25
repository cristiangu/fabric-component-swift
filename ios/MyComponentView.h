// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef MyComponentViewNativeComponent_h
#define MyComponentViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface MyComponentView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* MyComponentViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */
