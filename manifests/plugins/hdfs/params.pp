class dmlite::plugins::hdfs::params (
) inherits dmlite::params {
    $enable_hdfs  = hiera('dmlite::plugins::hdfs::params::enable_hdfs', true)
    $enable_pool_driver = hiera('dmlite::plugins::hdfs::params::enable_pool_driver', true)
    $enable_ns = hiera('dmlite::plugins::hdfs::params::enable_ns', false)
    $enable_io = hiera('dmlite::plugins::hdfs::params::enable_io', false)
    $hdfs_namenode = hiera('dmlite::plugins::hdfs::params::hdfs_namenode', undef)
    $hdfs_port = hiera('dmlite::plugins::hdfs::params::hdfs_port', undef)
    $hdfs_user = hiera('dmlite::plugins::hdfs::params::hdfs_user', undef)
    $hdfs_mode = hiera('dmlite::plugins::hdfs::params::hdfs_mode', rw)
    $hdfs_gateway = hiera('dmlite::plugins::hdfs::params::hdfs_gateway', "${::fqdn}")
    $hdfs_tmp_folder = hiera('dmlite::plugins::hdfs::params::hdfs_tmp_folder', '/tmp')
    $hdfs_replication = hiera('dmlite::plugins::hdfs::params::hdfs_replication',3 )
    $hadoop_home_lib = hiera('dmlite::plugins::hdfs::params::hadoop_home_lib','/usr/lib/hadoop')
    $hdfs_home_lib = hiera('dmlite::plugins::hdfs::params::hdfs_home_lib','/usr/lib/hadoop-hdfs')
    $hadoop_conf_folder= hiera('dmlite::plugins::hdfs::params::hadoop_conf_folder','/etc/hadoop/conf')
    $java_home = hiera('dmlite::plugins::hdfs::params::java_home','/usr/lib/jvm/java/')
    $token_password = hiera('dmlite::plugins::hdfs::params::token_password','change-this')
    $map_file = hiera('dmlite::plugins::hdfs::params::map_file','/etc/lcgdm-mapfile')
    $token_id = hiera('dmlite::plugins::hdfs::params::token_id','ip')
    $token_life = hiera('dmlite::plugins::hdfs::params::token_life',1000)
}
