module.exports = {
  apps: [
    {
      name: "NMS-React",
      script: "npm run app.js",
      log_date_format: "YYYY-MM-DD HH:mm:ss",
    },
  ],
  env: {
    PM2_RPC_SOCKET_PATH: '/etc/pm2daemon/rpc.sock',
  }
};
