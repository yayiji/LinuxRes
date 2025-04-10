module.exports = {
  apps: [
    {
      name: "git-update",
      script: "/root/li/hooks/start-hooks.sh",
      interpreter: "/usr/bin/bash", // No interpreter, as it’s a binary
      // optional: define cwd if needed
      // cwd: '/full/path/to/your/working/directory',
      // optional: set autorestart, logs, environment variables, etc.
      autorestart: true,
    },
    {
      name: "ytdlp",
      script: "/root/proj/ytdlp/index.js",
      interpreter: "node",
      autorestart: true,
    },
  ],
};
