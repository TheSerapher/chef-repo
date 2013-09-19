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
