define dmlite::domain(
) {
  Class[Dmlite::Shell::Install] -> Dmlite::Domain <| |>

  $domainpath = "/${dmlite::dpm::config::basepath}/${name}"

  exec { "ns_domain_${name}":
    path        => "/usr/bin:/usr/sbin",
    command     => "dmlite-shell -e \"mkdir ${domainpath} p\"",
    unless      => "dmlite-shell -e \"ls ${domainpath}\""
  }

}

