# v2dock-kubesail

v2dock for Kubesail

> 在 Kubesail 上同时部署一个 v2ray 和一个 v2ray + WebSocket + TLS 服务端

一键部署地址：<a href="https://kubesail.com/template/kullex/v2dock-kubesail"><img src="https://img.shields.io/badge/1--Click-Deploy%20on%20Kubernetes-blue" /></a>

### 环境变量说明：

1. **FRONTEND_UUID：** 作为前置（ws+tls）的登陆 UUID
2. **BACKEND_UUID：** 作为后置（原始协议，可以使用 proxySettings）的登陆 UUID
3. **V2RAY_PORT：** 这个其实不用改，kubesail 在映射的时候会使用随机的 tcp 端口
4. **V2RAY_PATH：** ws 路径，不用加 `/`


### Kubesail 端口映射

请将 9199 端口作为 tcp 端口映射，将 8118 端口作为 HTTPS 映射
