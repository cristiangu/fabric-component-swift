# Swift Example Project

In this example project, we have a React Native library with a Turbo Module using Swift and a Fabric component using Swift.

For a step-by-step guide, [check out this article](https://cristiangutu.pro/using-swift-to-develop-a-fabric-component-in-react-natives-new-architecture/).

## Run the Example project

- `yarn`
- `cd example/ios`
- `bundle install`
- `RCT_NEW_ARCH_ENABLED=1 pod install`
- Open the `example/ios/NewLibExample.xcworkspace` project in Xcode and run it.


## Usage

Check out the `example/src/App.tsx` to see how this is being used.

```js
import { multiply, MyComponentView } from 'react-native-new-lib';

// ...

const result = await multiply(3, 7);

return <MyComponentView style={{ width: 60, height: 60 }} color="#64C17F" />
```

## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)
