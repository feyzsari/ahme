import os, boto3
region = os.environ['AWS_REGION']
instances = os.environ['instance_id']
ec2 = boto3.client('ec2', region_name=region)
def lambda_handler(event, context):
    ec2.start_instances(InstanceIds=instances)
    print('started your instances: ' + str(instances))