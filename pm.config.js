module.exports = {
  apps: [
    {
      name: "git-update",
      script: "/usr/bin/webhook",
      args: "-hooks ~/li/hooks/hooks.json -port 9000 -verbose", 
      interpreter: "none", // No interpreter, as it’s a binary
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
