# Bridge
* local laptop > IP1 > IP2
```
ssh -o "Compression yes" -o ProxyCommand='ssh -o "Compression yes" -i key.pem ec2-user@IP1.compute-1.amazonaws.com nc IP2 22' -i key.pem ec2-user@IP2 -D 0.0.0.0:7070
```

# [Proxy SwitchyOmega](https://chrome.google.com/webstore/detail/proxy-switchyomega/padekgcemlokbadohgkifijomclgjgif?hl=en)

# [polipo](https://github.com/jech/polipo)
```
brew install polipo
brew services start polipo
brew services restart polipo 
brew services stop polipo    
polipo socksParentProxy=127.0.0.1:7070 allowedClients=0.0.0.0/0 logLevel=0xFF proxyPort=8119 proxyAddress=local_IP
```
