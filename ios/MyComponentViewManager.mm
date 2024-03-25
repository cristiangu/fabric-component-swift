#import <React/RCTViewManager.h>
#import <React/RCTUIManager.h>
#import "RCTBridge.h"
#import "react_native_new_lib-Swift.h"

@interface MyComponentViewManager : RCTViewManager
@end

@implementation MyComponentViewManager

RCT_EXPORT_MODULE(MyComponentView)

- (UIView *)view
{
  return [[UIView alloc] init];
}

RCT_CUSTOM_VIEW_PROPERTY(color, NSString, UIView)
{
  [view setBackgroundColor: [[UIColor alloc] initWithHex:json alpha:1.0]];
}

@end
