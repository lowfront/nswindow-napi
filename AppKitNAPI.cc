#include "NSWindow.h"

napi_value Init(napi_env env, napi_value exports) {
  napi_status status;

  napi_property_descriptor descriptors[] = {
    {"GetNSWindowCollectionBehaviorDefault", 0, GetNSWindowCollectionBehaviorDefault, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorCanJoinAllSpaces", 0, GetNSWindowCollectionBehaviorCanJoinAllSpaces, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorMoveToActiveSpace", 0, GetNSWindowCollectionBehaviorMoveToActiveSpace, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorManaged", 0, GetNSWindowCollectionBehaviorManaged, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorTransient", 0, GetNSWindowCollectionBehaviorTransient, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorStationary", 0, GetNSWindowCollectionBehaviorStationary, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorParticipatesInCycle", 0, GetNSWindowCollectionBehaviorParticipatesInCycle, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorIgnoresCycle", 0, GetNSWindowCollectionBehaviorIgnoresCycle, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorFullScreenPrimary", 0, GetNSWindowCollectionBehaviorFullScreenPrimary, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorFullScreenAuxiliary", 0, GetNSWindowCollectionBehaviorFullScreenAuxiliary, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorFullScreenNone", 0, GetNSWindowCollectionBehaviorFullScreenNone, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorFullScreenAllowsTiling", 0, GetNSWindowCollectionBehaviorFullScreenAllowsTiling, 0, 0, 0, napi_default, 0},
    {"GetNSWindowCollectionBehaviorFullScreenDisallowsTiling", 0, GetNSWindowCollectionBehaviorFullScreenDisallowsTiling, 0, 0, 0, napi_default, 0},
    {"SetCollectionBehavior", 0, SetCollectionBehavior, 0, 0, 0, napi_default, 0},
    
    {"GetKCGNumReservedWindowLevels", 0, GetKCGNumReservedWindowLevels, 0, 0, 0, napi_default, 0},
    {"GetKCGNumReservedBaseWindowLevels", 0, GetKCGNumReservedBaseWindowLevels, 0, 0, 0, napi_default, 0},
    {"GetKCGBaseWindowLevel", 0, GetKCGBaseWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGMinimumWindowLevel", 0, GetKCGMinimumWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGMaximumWindowLevel", 0, GetKCGMaximumWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGDesktopWindowLevel", 0, GetKCGDesktopWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGDesktopIconWindowLevel", 0, GetKCGDesktopIconWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGBackstopMenuLevel", 0, GetKCGBackstopMenuLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGNormalWindowLevel", 0, GetKCGNormalWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGFloatingWindowLevel", 0, GetKCGFloatingWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGTornOffMenuWindowLevel", 0, GetKCGTornOffMenuWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGModalPanelWindowLevel", 0, GetKCGModalPanelWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGUtilityWindowLevel", 0, GetKCGUtilityWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGDockWindowLevel", 0, GetKCGDockWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGMainMenuWindowLevel", 0, GetKCGMainMenuWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGStatusWindowLevel", 0, GetKCGStatusWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGPopUpMenuWindowLevel", 0, GetKCGPopUpMenuWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGOverlayWindowLevel", 0, GetKCGOverlayWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGHelpWindowLevel", 0, GetKCGHelpWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGDraggingWindowLevel", 0, GetKCGDraggingWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGScreenSaverWindowLevel", 0, GetKCGScreenSaverWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGAssistiveTechHighWindowLevel", 0, GetKCGAssistiveTechHighWindowLevel, 0, 0, 0, napi_default, 0},
    {"GetKCGCursorWindowLevel", 0, GetKCGCursorWindowLevel, 0, 0, 0, napi_default, 0},
    {"SetLevel", 0, SetLevel, 0, 0, 0, napi_default, 0},  };

  status = napi_define_properties(env, exports, sizeof(descriptors)/sizeof(napi_property_descriptor), descriptors);
  if (status != napi_ok) {
    napi_throw_error(env, NULL, "Fail to define");
    return NULL;
  }

  return exports;
}

NAPI_MODULE(AppKitNAPI, Init)
