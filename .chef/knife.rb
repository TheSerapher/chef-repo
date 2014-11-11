current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "theserapher"
client_key               "#{ENV['HOME']}/.chef/hosted/theserapher.pem"
validation_client_name   "theserapher-validator"
validation_key           "#{ENV['HOME']}/.chef/hosted/theserapher-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/theserapher"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/hosted/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

# General settings
knife[:bootstrap_version] =     '11.12.8'

# AWS Settings
knife[:associate_public_ip] =   true
knife[:availability_zone] =     'eu-west-1a'                        # Default zone for our Subnet
knife[:subnet_id] =             'subnet-2f1ede4a'                   # Default: NAT Subnet
knife[:image] =                 'ami-1d61a76a'                      # Default BP Squeeze image
knife[:region] =                'eu-west-1'                         # Default region
knife[:flavor] =                't1.micro'                          # Instance Type
knife[:aws_ssh_key_id] =        'aws-ireland'                       # Load staging SSH Keys
knife[:aws_access_key_id] =     "#{ENV['_PRIVATE_AWS_ACCESS_KEY_ID']}"       # AWS Access ID from Environment
knife[:aws_secret_access_key] = "#{ENV['_PRIVATE_AWS_SECRET_ACCESS_KEY']}"   # AWS Secret Key from Environment
