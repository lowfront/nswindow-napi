#import <AppKit/AppKit.h>
#include "NSWindow.h"

/*
NSWindow.collectionBehavior: https://developer.apple.com/documentation/appkit/nswindow/1419471-collectionbehavior?language=objc
*/
napi_value GetNSWindowCollectionBehaviorDefault(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorDefault, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorCanJoinAllSpaces(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorCanJoinAllSpaces, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorMoveToActiveSpace(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorMoveToActiveSpace, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorManaged(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorManaged, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorTransient(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorTransient, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorStationary(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorStationary, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorParticipatesInCycle(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorParticipatesInCycle, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorIgnoresCycle(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorIgnoresCycle, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorFullScreenPrimary(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorFullScreenPrimary, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorFullScreenAuxiliary(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorFullScreenAuxiliary, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorFullScreenNone(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorFullScreenNone, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorFullScreenAllowsTiling(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorFullScreenAllowsTiling, &value);
  return value;
}
napi_value GetNSWindowCollectionBehaviorFullScreenDisallowsTiling(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)NSWindowCollectionBehaviorFullScreenDisallowsTiling, &value);
  return value;
}

napi_value SetCollectionBehavior(napi_env env, napi_callback_info info) {
  napi_status status;

  size_t argc = 2;
  napi_value args[2];
  status = napi_get_cb_info(env, info, &argc, args, 0, 0);
  if (status != napi_ok) {
    napi_throw_error(env, NULL, "Fail to load.");
    return NULL;
  } else if (argc < 2) {
    napi_throw_error(env, NULL, "Invalid argument size.");
    return NULL;
  }

  void *windowHandle;
  size_t windowHandleLength;
  status = napi_get_buffer_info(env, args[0], &windowHandle, &windowHandleLength);
  if (status != napi_ok) {
    napi_throw_error(env, NULL, "Can't read args[0]");
    return NULL;
  } else if (windowHandleLength == 0) {
    napi_throw_error(env, NULL, "Emtpy window handle.");
    return NULL;
  }

  NSView *NSWindowView = *static_cast<NSView **>(windowHandle);
  if (![NSWindowView respondsToSelector:@selector(window)] ||
      NSWindowView.window == nil) {
    napi_throw_error(env, NULL, "Fail to load NSView.");
    return NULL;
  }

  int collectionBehavior;
  status = napi_get_value_int32(env, args[1], &collectionBehavior);
  if (status != napi_ok) {
    napi_throw_error(env, NULL, "Can't read args[1]");
    return NULL;
  }

  NSWindow *window = NSWindowView.window;
  [window setCollectionBehavior:collectionBehavior];

  return NULL;
}

/*
NSWindow.level: https://developer.apple.com/documentation/appkit/nswindow/1419511-level?language=objc
*/
napi_value GetKCGNumReservedWindowLevels(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGNumReservedWindowLevels, &value);
  return value;
}
napi_value GetKCGNumReservedBaseWindowLevels(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGNumReservedBaseWindowLevels, &value);
  return value;
}
napi_value GetKCGBaseWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGBaseWindowLevel, &value);
  return value;
}
napi_value GetKCGMinimumWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGMinimumWindowLevel, &value);
  return value;
}
napi_value GetKCGMaximumWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGMaximumWindowLevel, &value);
  return value;
}
napi_value GetKCGDesktopWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGDesktopWindowLevel, &value);
  return value;
}
napi_value GetKCGDesktopIconWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGDesktopIconWindowLevel, &value);
  return value;
}
napi_value GetKCGBackstopMenuLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGBackstopMenuLevel, &value);
  return value;
}
napi_value GetKCGNormalWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGNormalWindowLevel, &value);
  return value;
}
napi_value GetKCGFloatingWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGFloatingWindowLevel, &value);
  return value;
}
napi_value GetKCGTornOffMenuWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGTornOffMenuWindowLevel, &value);
  return value;
}
napi_value GetKCGModalPanelWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGModalPanelWindowLevel, &value);
  return value;
}
napi_value GetKCGUtilityWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGUtilityWindowLevel, &value);
  return value;
}
napi_value GetKCGDockWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGDockWindowLevel, &value);
  return value;
}
napi_value GetKCGMainMenuWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGMainMenuWindowLevel, &value);
  return value;
}
napi_value GetKCGStatusWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGStatusWindowLevel, &value);
  return value;
}
napi_value GetKCGPopUpMenuWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGPopUpMenuWindowLevel, &value);
  return value;
}
napi_value GetKCGOverlayWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGOverlayWindowLevel, &value);
  return value;
}
napi_value GetKCGHelpWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGHelpWindowLevel, &value);
  return value;
}
napi_value GetKCGDraggingWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGDraggingWindowLevel, &value);
  return value;
}
napi_value GetKCGScreenSaverWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGScreenSaverWindowLevel, &value);
  return value;
}
napi_value GetKCGAssistiveTechHighWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGAssistiveTechHighWindowLevel, &value);
  return value;
}
napi_value GetKCGCursorWindowLevel(napi_env env, napi_callback_info info) {
  napi_value value;
  napi_create_int32(env, (int)(size_t)kCGCursorWindowLevel, &value);
  return value;
}

napi_value SetLevel(napi_env env, napi_callback_info info) {
  napi_status status;

  size_t argc = 2;
  napi_value args[2];
  status = napi_get_cb_info(env, info, &argc, args, 0, 0);
  if (status != napi_ok) {
    napi_throw_error(env, NULL, "Fail to load.");
    return NULL;
  } else if (argc < 2) {
    napi_throw_error(env, NULL, "Invalid argument size.");
    return NULL;
  }

  void *windowHandle;
  size_t windowHandleLength;
  status = napi_get_buffer_info(env, args[0], &windowHandle, &windowHandleLength);
  if (status != napi_ok) {
    napi_throw_error(env, NULL, "Can't read args[0]");
    return NULL;
  } else if (windowHandleLength == 0) {
    napi_throw_error(env, NULL, "Emtpy window handle.");
    return NULL;
  }

  NSView *NSWindowView = *static_cast<NSView **>(windowHandle);
  if (![NSWindowView respondsToSelector:@selector(window)] ||
      NSWindowView.window == nil) {
    napi_throw_error(env, NULL, "Fail to load NSView.");
    return NULL;
  }

  int level;
  status = napi_get_value_int32(env, args[1], &level);
  if (status != napi_ok) {
    napi_throw_error(env, NULL, "Can't read args[1]");
    return NULL;
  }

  NSWindow *window = NSWindowView.window;
  [window setLevel:level];

  return NULL;
}