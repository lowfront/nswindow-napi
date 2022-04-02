#ifndef AppKitNAPI_H
#define AppKitNAPI_H
#include <node_api.h>

napi_value GetNSWindowCollectionBehaviorDefault(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorCanJoinAllSpaces(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorMoveToActiveSpace(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorManaged(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorTransient(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorStationary(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorParticipatesInCycle(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorIgnoresCycle(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorFullScreenPrimary(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorFullScreenAuxiliary(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorFullScreenNone(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorFullScreenAllowsTiling(napi_env env, napi_callback_info info);
napi_value GetNSWindowCollectionBehaviorFullScreenDisallowsTiling(napi_env env, napi_callback_info info);
napi_value SetCollectionBehavior(napi_env, napi_callback_info);

napi_value GetKCGNumReservedWindowLevels(napi_env env, napi_callback_info info);
napi_value GetKCGNumReservedBaseWindowLevels(napi_env env, napi_callback_info info);
napi_value GetKCGBaseWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGMinimumWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGMaximumWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGDesktopWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGDesktopIconWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGBackstopMenuLevel(napi_env env, napi_callback_info info);
napi_value GetKCGNormalWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGFloatingWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGTornOffMenuWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGModalPanelWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGUtilityWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGDockWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGMainMenuWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGStatusWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGPopUpMenuWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGOverlayWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGHelpWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGDraggingWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGScreenSaverWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGAssistiveTechHighWindowLevel(napi_env env, napi_callback_info info);
napi_value GetKCGCursorWindowLevel(napi_env env, napi_callback_info info);
napi_value SetLevel(napi_env, napi_callback_info);
#endif