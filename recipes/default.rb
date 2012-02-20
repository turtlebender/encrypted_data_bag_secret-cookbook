directory_name = "/etc/chef"
begin
  Dir::mkdir(directory_name)
rescue
end

doc = node[:encrypted_data_bag_secret]
File.open(directory_name + "/encrypted_data_bag_secret", 'w') {|f| f.write(doc) }
