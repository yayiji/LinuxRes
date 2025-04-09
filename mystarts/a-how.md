
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


systemctl daemon-reload                 # Reload the systemd daemon to recognize the new service
systemctl enable your.service           # run it at boot
systemctl start your.service            # start it now
systemctl restart your.service          # restart it

systemctl status your.service           # check current status
systemctl list-units --type=service     # list all services
journalctl -u webhook.service           # View logs



