#!/usr/bin/env bash
echo "build and uploadArchives..."
# upload archives to local
./gradlew clean uploadArchives -PRELEASE_REPOSITORY_URL=file:///tmp/ -PSNAPSHOT_REPOSITORY_URL=file:///tmp/
if [ $? -eq 0 ]
then
    echo "deploy successful!"
    exit 0
else
    echo "deploy failed!"
    exit 1
fi
