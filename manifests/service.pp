class ypbind::service {

    service {'ypbind':
        ensure => running,
        enable => true,
        hasrestart => true,
        hasstatus => true,
    }

}
