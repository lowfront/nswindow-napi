const { spawnSync } = require('child_process');
const os = require('os');

if (os.platform() === 'darwin') {
  spawnSync('npm', ['run', 'napi-build'], {
    stdio: 'inherit',
  });
}