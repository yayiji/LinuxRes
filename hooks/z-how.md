# How 

# Install webhook
sudo apt install webhook

# start
webhook -hooks ~/li/hooks/hooks.json -port 9000

# Test
curl http://143.110.157.252:9000/hooks/li-update
curl http://localhost:9000/hooks/li-update


# add add text