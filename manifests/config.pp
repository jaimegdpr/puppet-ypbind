class ypbind::config {

        file {'/etc/yp.conf':
            ensure => present,
            source => 'puppet:///grid_files/ypbind/yp.conf',
            owner => 'root',
            group => 'root',
            mode => '0600',
            notify => Service['ypbind'],
        }

        file_line { 'nis_domain':
            ensure => present,
            path => '/etc/sysconfig/network',
            line => 'NISDOMAIN=pcaecie',
        }

    
}
