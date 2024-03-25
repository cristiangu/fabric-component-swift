#import "NewLib.h"
#import "react_native_new_lib-Swift.h" // Yes Xcode will not allow `-`, but it will alow it for the last part of the name. :)

@implementation NewLib
RCT_EXPORT_MODULE()

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
RCT_EXPORT_METHOD(multiply:(double)a
                  b:(double)b
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
{
    double result =  [Calculator multiplyWithA:a b:b];

    resolve([NSNumber numberWithDouble:result]);
}

// Don't compile this code when we build for the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeNewLibSpecJSI>(params);
}
#endif

@end
