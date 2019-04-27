#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/instate-london.pem \
    target/sweater-1.0-SNAPSHOT.jar \
    ec2-18-130-43-95.eu-west-2.compute.amazonaws.com:/home/ec2-user/
sudo yum install java-1.8.0-openjdk-devel
echo 'Restart server...'

ssh -i ~/.ssh/instate-london.pem ec2-user@ec2-18-130-43-95.eu-west-2.compute.amazonaws.com << EOF
pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye'