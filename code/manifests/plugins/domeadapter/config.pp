class dmlite::plugins::domeadapter::config (
  $config_dir_name    = 'dmlite',
  $dome_disk_url,
  $dome_head_url,
  $davix_ca_path      = $dmlite::plugins::domeadapter::params::davix_ca_path,
  $davix_cert_path    = $dmlite::plugins::domeadapter::params::davix_ca_cert_path,
  $davix_private_key_path = $dmlite::plugins::domeadapter::params::davix_private_key_path,
  $dome_head_url      = $dmlite::plugins::domeadapter::params::dome_head_url,
  $dome_disk_url      = $dmlite::plugins::domeadapter::params::dome_disk_url,
  $enable_io          = $dmlite::plugins::domeadapter::params::enable_io,
  $enable_ns          = $dmlite::plugins::domeadapter::params::enable_ns,
  $enable_pooldriver  = $dmlite::plugins::domeadapter::params::enable_pooldriver,
  
  $token_password,
  $token_id           = $dmlite::plugins::domeadapter::params::token_id,
  $token_life         = $dmlite::plugins::domeadapter::params::token_life,
  $adminuser          = undef,
) inherits dmlite::plugins::domeadapter::params {

  Class[dmlite::plugins::domeadapter::install] -> Class[dmlite::plugins::domeadapter::config]

  dmlite::plugins::domeadapter::create_config{'default_config':
    config_dir_name    => $config_dir_name,   # put file in /etc/dmlite.conf.d/domeadapter.conf
    $dome_disk_url     => $dome_disk_url,    
    $dome_head_url     => $dome_head_url,
    $davix_ca_path     => $davix_ca_path,
    $davix_cert_path   => $davix_ca_cert_path,
    $davix_private_key_path => $davix_private_key_path,
    $dome_head_url     => $dome_head_url,
    $dome_disk_url     => $dome_disk_url,
    enable_io          => $enable_io,
    enable_ns          => $enable_ns,
    enable_pooldriver  => $enable_pooldriver,
    token_password     => $token_password,
    token_id           => $token_id,
    token_life         => $token_life,
  }
}
