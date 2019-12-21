#!/bin/bash
npm install
npm run build
cp -r dist/* front
echo OK;
exit 0
