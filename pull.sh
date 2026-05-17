#!/bin/bash

echo "Updating Git merge settings..."
# تثبيت خيار الـ Merge العادي ومنع الـ Rebase عشان ما تضيع التعديلات
git config pull.rebase false

echo "Pulling latest updates from GitHub..."
git pull origin main

echo "Done! Project is up to date."