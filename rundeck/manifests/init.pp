class rundeck ( 

) {

  case $::operatingsystem {

    'Redhat','CentOS':		{ require rundeck::redhat::service }	
    'Ubuntu':			{ require rundeck::ubuntu::service }
    default:			{ require rundeck::redhat::service }

  }

}
