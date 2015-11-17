default['cassandra']['dse']['snitch']           = 'SimpleSnitch'
default['cassandra']['dse']['service_name']     =  'dse'
default['cassandra']['dse']['conf_dir']         = '/etc/dse'
default['cassandra']['dse']['lib_dir']         = '/usr/share/dse/cassandra/lib'
default['cassandra']['dse']['system_key_directory'] = '/etc/dse/conf'
default['cassandra']['dse']['config_encryption_active'] = false
default['cassandra']['dse']['config_encryption_key_name'] = 'system_key'
default['cassandra']['dse']['system_info_encryption']['enabled'] = false
default['cassandra']['dse']['system_info_encryption']['cipher_algorithm'] = 'AES'
default['cassandra']['dse']['system_info_encryption']['secret_key_strength'] = 128
default['cassandra']['dse']['system_info_encryption']['chunk_length_kb'] = 64
default['cassandra']['dse']['system_info_encryption']['key_name'] = 'system_table_keytab'
default['cassandra']['dse']['repo_user'] = 'user'
default['cassandra']['dse']['repo_pass'] = 'password'
default['cassandra']['dse']['rhel_repo_url'] = "http://#{node['cassandra']['dse']['repo_user']}:#{node['cassandra']['dse']['repo_pass']}@rpm.datastax.com/enterprise"
default['cassandra']['dse']['debian_repo_url'] = "http://#{node['cassandra']['dse']['repo_user']}:#{node['cassandra']['dse']['repo_pass']}@debian.datastax.com/enterprise"
default['cassandra']['dse']['debian_repo_url_key'] = "http://#{node['cassandra']['dse']['repo_user']}:#{node['cassandra']['dse']['repo_pass']}@debian.datastax.com/debian/repo_key"

# Chained default of audit_logging_options.enabled for backwards compatibility
default['cassandra']['dse']['audit_logging_options']['enabled'] = node['cassandra']['audit_logging']
default['cassandra']['dse']['audit_logging_options']['logger'] = 'SLF4JAuditWriter'
# Chained default of included_categories for backwards compatibility
default['cassandra']['dse']['audit_logging_options']['included_categories'] = node['cassandra']['active_categories']
default['cassandra']['dse']['audit_logging_options']['excluded_categories'] = ''
default['cassandra']['dse']['audit_logging_options']['included_keyspaces'] = ''
default['cassandra']['dse']['audit_logging_options']['excluded_keyspaces'] = ''
default['cassandra']['dse']['audit_logging_options']['retention_time'] = 0
default['cassandra']['dse']['audit_logging_options']['cassandra_audit_writer_options']['mode'] = 'sync'
default['cassandra']['dse']['audit_logging_options']['cassandra_audit_writer_options']['batch_size'] = 50
default['cassandra']['dse']['audit_logging_options']['cassandra_audit_writer_options']['flush_time'] = 500
default['cassandra']['dse']['audit_logging_options']['cassandra_audit_writer_options']['num_writers'] = 10
default['cassandra']['dse']['audit_logging_options']['cassandra_audit_writer_options']['queue_size'] = 10_000
default['cassandra']['dse']['audit_logging_options']['cassandra_audit_writer_options']['write_consistency'] = 'QUORUM'
