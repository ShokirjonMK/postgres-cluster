-- Replication user
CREATE ROLE replica_user WITH REPLICATION LOGIN PASSWORD 'replica_pass';

-- Replication config
ALTER SYSTEM SET wal_level = 'replica';
ALTER SYSTEM SET max_wal_senders = 10;
ALTER SYSTEM SET wal_keep_size = '64MB';
ALTER SYSTEM SET hot_standby = 'on';
