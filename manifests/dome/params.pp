class dmlite::dome::params (
) inherits dmlite::params {
    $head_port     	= hiera('dmlite::dome::params::head_port', 9001)
    $disk_port		= hiera('dmlite::dome::params::disk_port',9002)
    $head       	= false
    $disk   	        = true
    $head_debug		= hiera('dmlite::dome::params::head_debug', 1)
    $disk_debug 	= hiera('dmlite::dome::params::disk_debug', 1)
    $head_maxcallouts   = hiera('dmlite::dome::params::head_maxcallouts', 4)
    $head_maxcalloutspernode =  hiera('dmlite::dome::params::head_maxcalloutspernode', 2)
    $head_maxchecksums  = hiera('dmlite::dome::params::head_maxchecksums', 2)
    $head_maxchecksumspernode  = hiera('dmlite::dome::params::head_maxchecksumspernode', 2)
    $db_host 		= hiera('dmlite::dome::params::db_host', 'localhost')
    $db_user  		= hiera('dmlite::dome::params::db_user', 'dpmmgr')
    $db_password	= undef
    $db_port		= hiera('dmlite::dome::params::db_port', 0)
    $db_pool_size	= hiera('dmlite::dome::params::db_pool_size', 128)
    $head_task_maxrunningtime = hiera('dmlite::dome::params::head_task_maxrunningtime', 3600)
    $head_task_purgetime = hiera('dmlite::dome::params::head_task_purgetime', 3600)
    $disk_task_maxrunningtime = hiera('dmlite::dome::params::disk_task_maxrunningtime', 3600)
    $disk_task_purgetime = hiera('dmlite::dome::params::disk_task_purgetime', 3600)
    $put_minfreespace_mb = hiera('dmlite::dome::params::put_minfreespace_mb', 1)
    $head_auth_authorizeDN = hiera('dmlite::dome::params::head_auth_authorizeDN', [])
    $disk_auth_authorizeDN = hiera('dmlite::dome::params::disk_auth_authorizeDN', [])
    $dirspacereportdepth = hiera('dmlite::dome::params::dirspacereportdepth', 6)
    $restclient_cli_certificate = hiera('dmlite::dome::params::restclient_cli_certificate','/etc/grid-security/dpmmgr/dpmcert.pem')
    $restclient_cli_private_key = hiera('dmlite::dome::params::restclient_cli_private_key','/etc/grid-security/dpmmgr/dpmkey.pem')
    $head_filepuller_stathook = hiera('dmlite::dome::params::head_filepuller_stathook','/usr/share/dmlite/filepull/externalstat_example.sh')
    $head_filepuller_stathooktimeout = hiera('dmlite::dome::params::head_filepuller_stathooktimeout',60)
    $disk_filepuller_pullhook = hiera('dmlite::dome::params::disk_filepuller_pullhook','/usr/share/dmlite/filepull/externalpull_example.sh')
    $filepuller = undef
    $headnode_domeurl = hiera('dmlite::dome::params::disk_filepuller_pullhook',undef)
    $proxy_timeout = hiera('dmlite::dome::params::proxy_timeout',600)
}
