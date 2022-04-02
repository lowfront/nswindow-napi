# NSWindow NAPI

A methods collection of using NSWindow native methods in Node.js. Currently, only [collectionBehavior](https://developer.apple.com/documentation/appkit/nswindow/1419471-collectionbehavior?language=objc) and [level](https://developer.apple.com/documentation/appkit/nswindow/1419511-level?language=objc) are implemented. You can use it for `BrowserWindow` on `Electron`.

## Usage
```js
  const win = new BrowserWindow();

  // 
  NSWindow.SetCollectionBehavior(
    win.getNativeWindowHandle(),
    NSWindowCollectionBehaviorCanJoinAllSpaces|NSWindowCollectionBehaviorStationary
  );

  NSWindow.SetLevel(win.getNativeWindowHandle(), NSWindow.GetKCGDesktopWindowLevel());
```
Please refer to the example.

## Methods
```ts
export function GetNSWindowCollectionBehaviorDefault(): number;
export function GetNSWindowCollectionBehaviorCanJoinAllSpaces(): number;
export function GetNSWindowCollectionBehaviorMoveToActiveSpace(): number;
export function GetNSWindowCollectionBehaviorManaged(): number;
export function GetNSWindowCollectionBehaviorTransient(): number;
export function GetNSWindowCollectionBehaviorStationary(): number;
export function GetNSWindowCollectionBehaviorParticipatesInCycle(): number;
export function GetNSWindowCollectionBehaviorIgnoresCycle(): number;
export function GetNSWindowCollectionBehaviorFullScreenPrimary(): number;
export function GetNSWindowCollectionBehaviorFullScreenAuxiliary(): number;
export function GetNSWindowCollectionBehaviorFullScreenNone(): number;
export function GetNSWindowCollectionBehaviorFullScreenAllowsTiling(): number;
export function GetNSWindowCollectionBehaviorFullScreenDisallowsTiling(): number;
export function SetCollectionBehavior(win: Buffer, collectionBehavior: number): null;

export function GetKCGNumReservedWindowLevels(): number;
export function GetKCGNumReservedBaseWindowLevels(): number;
export function GetKCGBaseWindowLevel(): number;
export function GetKCGMinimumWindowLevel(): number;
export function GetKCGMaximumWindowLevel(): number;
export function GetKCGDesktopWindowLevel(): number;
export function GetKCGDesktopIconWindowLevel(): number;
export function GetKCGBackstopMenuLevel(): number;
export function GetKCGNormalWindowLevel(): number;
export function GetKCGFloatingWindowLevel(): number;
export function GetKCGTornOffMenuWindowLevel(): number;
export function GetKCGModalPanelWindowLevel(): number;
export function GetKCGUtilityWindowLevel(): number;
export function GetKCGDockWindowLevel(): number;
export function GetKCGMainMenuWindowLevel(): number;
export function GetKCGStatusWindowLevel(): number;
export function GetKCGPopUpMenuWindowLevel(): number;
export function GetKCGOverlayWindowLevel(): number;
export function GetKCGHelpWindowLevel(): number;
export function GetKCGDraggingWindowLevel(): number;
export function GetKCGScreenSaverWindowLevel(): number;
export function GetKCGAssistiveTechHighWindowLevel(): number;
export function GetKCGCursorWindowLevel(): number;
export function SetLevel(win: Buffer, collectionBehavior: number): null;
```