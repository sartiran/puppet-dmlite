class dmlite::config::disk (
  $enable_config  = $dmlite::params::enable_config,
  $user           = $dmlite::params::user,
  $group          = $dmlite::params::group
) inherits dmlite::params {

  Class[Dmlite::Install] -> Class[Dmlite::Config::Disk]

  # the head config is needed for xrootd and gridftp
  dmlite::create_config{"head_config":
    config_file_name => "dmlite",
    user             => $user,
    group            => $group,
    enable_config    => $enable_config
  }

  dmlite::create_config{"disk_config_http":
    config_file_name => "dmlite-disk",
    user             => $user,
    group            => $group,
    enable_config    => $enable_config
  }
}
