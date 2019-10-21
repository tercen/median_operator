## Deploy

```R
renv::init()
```

#!/usr/bin/env bash

```
git add -A && git commit -m "regenerated packages" && git tag -a 0.0.3 -m "++" && git push && git push --tags
```