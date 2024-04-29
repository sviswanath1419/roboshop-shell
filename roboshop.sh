#!/bin/bash
AMI="ami-0f3c7d07486cad139"
SG="sg-0a082b6ef7bd6d1e4"
INSTANCE_TYPE="t2.micro"
INSTANCES=('mongodb''catalogue')

for i in "${INSTANCES[@]}"
{
    echo "EC2 is a  ec2 $i"
}

# aws ec2 run-instances --image-id AMI --count 2 --instance-type $INSTANCE_TYPE --key-name MyKeyPair --security-group-ids $SG --subnet-id subnet-0823786c144f61f53