logrotate_app "php" do
  cookbook "logrotate"
  path "/var/log/php_errors.log"
  frequency "weekly"
  rotate 7
  create "644 root root"
end
