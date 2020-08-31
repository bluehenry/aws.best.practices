"""
Read parameters from AWS Systems Manager - Parameter Store
"""
import os
import yaml
import boto3

redis = {}
ssm = boto3.client('ssm', region_name='us-east-1')
redis['dev'] = ssm.get_parameter(Name='redis/dev', WithDecryption=True)['Parameter']['Value']
redis['qa'] = ssm.get_parameter(Name='redis/qa', WithDecryption=True)['Parameter']['Value']
