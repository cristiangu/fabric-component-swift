
#ifdef RCT_NEW_ARCH_ENABLED
#import "RNNewLibSpec.h"

@interface NewLib : NSObject <NativeNewLibSpec>
#else
#import <React/RCTBridgeModule.h>

@interface NewLib : NSObject <RCTBridgeModule>
#endif

@end
