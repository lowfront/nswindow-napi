const {app, BrowserWindow, ipcMain} = require('electron');
const NSWindow = require('../');

const NSWindowCollectionBehaviorCanJoinAllSpaces = NSWindow.GetNSWindowCollectionBehaviorCanJoinAllSpaces();
const NSWindowCollectionBehaviorStationary = NSWindow.GetNSWindowCollectionBehaviorStationary();

app.whenReady().then(() => {
  const win = new BrowserWindow();

  win.loadFile('index.html');

  NSWindow.SetCollectionBehavior(
    win.getNativeWindowHandle(),
    NSWindowCollectionBehaviorCanJoinAllSpaces|NSWindowCollectionBehaviorStationary
  );
});

app.on('window-all-closed', () => app.quit());
