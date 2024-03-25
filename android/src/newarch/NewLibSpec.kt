package com.newlib

import com.facebook.react.bridge.ReactApplicationContext

abstract class NewLibSpec internal constructor(context: ReactApplicationContext) :
  NativeNewLibSpec(context) {
}
