module.exports = {
  apps: [
    {
      name: "webhook",
      script: "webhook",
      args: "-hooks ~/li/hooks/hooks.json -port 9000",
      // optional: define cwd if needed
      // cwd: '/full/path/to/your/working/directory',
      // optional: set autorestart, logs, environment variables, etc.
      autorestart: true,
    },
    {
      name: "ytdlp",
      script: "node",
      args: "/root/proj/ytdlp/index.js",
      autorestart: true,
    },
  ],
};
