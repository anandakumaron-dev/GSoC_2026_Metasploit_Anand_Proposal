require 'yaml'

config = YAML.load_file("vuln_env.yml")

image = config["image"]
port = config["ports"][0]

puts "Launching vulnerable environment..."

system("docker run -d -p #{port} #{image}")

puts "Target available at http://localhost:#{port.split(':')[0]}"
