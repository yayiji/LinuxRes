
# One

Creat start service in /etc/systemd/system/webhook.service

Like:
[Unit]
Description=Webhook Server for Git Auto-Pull
After=network.target

[Service]
ExecStart=/usr/local/bin/webhook -hooks /var/www/hooks.json -port 9000 -verbose
WorkingDirectory=/var/www
Restart=always
User=www-data
Group=www-data
Environment=PATH=/usr/local/bin:/usr/bin:/bin

[Install]
WantedBy=multi-user.target

# Two
Reload the systemd daemon to recognize the new service:
- sudo systemctl daemon-reload
Enable the service to start on boot: 
- sudo systemctl enable webhook.service 
Start the webhook service immediately: 
- sudo systemctl start webhook.service

# Three
Check the status to ensure it’s active and running: 
- sudo systemctl status webhook.service 
By default, output goes to systemd’s journal. View logs with: 
- journalctl -u webhook.service 

