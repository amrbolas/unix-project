#!/bin/bash

# يتأكد إنك كتبت رسالة الـ Commit
if [ -z "$1" ]; then
    echo "Write a Commit message (example:)"
    echo "bash push.sh 'Added new updates'"
    exit 1
fi

# تنفيذ أوامر الجيت أوتوماتيكياً
git add .
git commit -m "$1"
git push origin main