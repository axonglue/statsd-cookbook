default[:statsd][:repo] = "git://github.com/etsy/statsd.git"
default[:statsd][:revision] = "master"
default[:statsd][:version] = "v0.7.1"

default[:statsd][:log_file] = "/var/log/statsd.log"
default[:statsd][:pid_dir] = "/var/run/statsd"
default[:statsd][:pid_file] = "/var/run/statsd/statsd.pid"
default[:statsd][:lock_file] = "/var/lock/subsys/statsd"

default[:statsd][:user] = "statsd"
default[:statsd][:group] = "statsd"

default[:statsd][:flush_interval_msecs] = 10000
default[:statsd][:port] = 8125

# Do we automatically delete idle stats?
default[:statsd][:delete_idle_stats] = false

# Is the graphite backend enabled?
default[:statsd][:graphite_enabled] = true
default[:statsd][:graphite_port] = 2003
default[:statsd][:graphite_host] = "localhost"

#
# Add all NPM module backends here. Each backend should be a
# hash of the backend's name to the NPM module's version. If we
# should just use the latest, set the hash to null.
#
# For example, to use version 0.0.1 of statsd-librato-backend:
#
#   attrs[:statsd][:backends] = { 'statsd-librato-backend' => '0.0.1' }
#
# To use the latest version of statsd-librato-backend:
#
#   attrs[:statsd][:backends] = { 'statsd-librato-backend' => nil }
#
default[:statsd][:backends] = {}

# 
# Starting with v 0.50 default namespace conventions for StatsD have changed.
# The 'new' default is legacyNamespace = True, though this may cause confusion
# for earlier users.  Reference: https://github.com/etsy/statsd/blob/master/docs/namespacing.md
# 
default[:statsd][:legacyNamespace] = true

#
# Add any additional backend configuration here.
#
default[:statsd][:extra_config] = {}



