class ypbind {

    include ypbind::install
    include ypbind::service
    include ypbind::config

    Class['ypbind::install'] ->
    Class['ypbind::service'] ->
    Class['ypbind::config']

}
