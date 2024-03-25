#ifdef RCT_NEW_ARCH_ENABLED
#import "MyComponentView.h"

#import <react/renderer/components/RNNewLibSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNNewLibSpec/EventEmitters.h>
#import <react/renderer/components/RNNewLibSpec/Props.h>
#import <react/renderer/components/RNNewLibSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "react_native_new_lib-Swift.h"

using namespace facebook::react;

@interface MyComponentView () <RCTMyComponentViewViewProtocol>

@end

@implementation MyComponentView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<MyComponentViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const MyComponentViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<MyComponentViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<MyComponentViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [[UIColor alloc] initWithHex:colorToConvert alpha:1.0]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> MyComponentViewCls(void)
{
    return MyComponentView.class;
}

@end
#endif
