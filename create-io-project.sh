#!/bin/bash

echo "#!/usr/bin/env io
\"Hello world!\" println" > main.io

echo "#!/bin/bash
io main.io" > run.sh

chmod +x run.sh

echo "### run

\`\`\`bash
./run.sh
\`\`\`" > README.md