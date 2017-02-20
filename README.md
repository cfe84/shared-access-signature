Generate shared access signatures for Azure Servicebus

# Usage

```
sas = require "sas/sas"

namespace = "https://whatever.servicebus.windows.net"
keyname = "RootManageSharedAccessKey"
keyvalue = "qk8NvLZu9/sLskDyP0FvZd92jj2nsl2L000AY="
date = new Date(2018, 0, 1)

console.log sas namespace, keyname, keyvalue, date
```
