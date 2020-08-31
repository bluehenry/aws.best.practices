import os
import yaml

def load_configs():
    with open("./config/env.yml", 'r') as f:
        env = os.getenv('APP_ENV', 'local')
        return yaml.load(f, Loader=yaml.Loader)[env]