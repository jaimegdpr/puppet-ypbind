class ypbind {

    include ypbind::install
    include ypbind::service
    include ypbind::config

    Class['ypbind::install'] ->
    Class['ypbind::config'] ->
    Class['ypbind::service']

}
