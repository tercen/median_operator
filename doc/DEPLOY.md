## Deploy

```R
renv::init()
```

#!/usr/bin/env bash

```
git add -A && git commit -m "fixed description" && git tag -a 0.0.4 -m "++" && git push && git push --tags
```