class rundeck ( 

  $receiver_email	= ['user1@email.com','user2@email.com'],
  $sender_email		= 'user1@email.com',
  $email_server		= 'myemailserver.com',
  $email_port		= 25,
  $email_user		= 'myemailaccount',
  $email_password	= 'myemailpassword',
  $email_ssl		= false,
  $error_fail_on_email  = false,
  $admin_user		= 'myadminuser',
  $admin_password	= 'password',
  $server_port		= 4440,
  $project_description  = 'my cool project',
  $project_organization = 'my org',
  $nodetype		= 'server'

) {

  case $::operatingsystem {

    'Redhat','CentOS':		{ require rundeck::redhat::service }	
    'Ubuntu':			{ require rundeck::ubuntu::service }
    default:			{ require rundeck::redhat::service }

  }

}
