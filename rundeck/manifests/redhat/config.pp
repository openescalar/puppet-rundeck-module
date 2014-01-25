class rundeck::redhat::config ( 

  $receiver_email       = $rundeck::receive_email,
  $sender_email		= $rundeck::sender_email,         
  $email_server		= $rundeck::email_server,         
  $email_port		= $rundeck::email_port,      
  $email_user		= $rundeck::email_user,           
  $email_password	= $rundeck::email_password,       
  $email_ssl		= $rundeck::email_ssl,            
  $error_fail_on_email  = $rundeck::error_fail_on_email,  
  $admin_user		= $rundeck::admin_user,           
  $admin_password	= $rundeck::admin_password,       
  $server_port		= $rundeck::server_port,          
  $project_description	= $rundeck::project_description,  
  $project_description	= $rundeck::project_organization, 
  $type			= $rundeck::nodetype
 
) { 

  require rundeck::redhat::install

  $rundeckhome = '/etc/rundeck'

  file {
    "${rundeckhome}/admin.aclpolicy":
      owner	=> "rundeck",
      group	=> "rundeck",
      content	=> template('rundeck/admin.aclpolicy');

    "${rundeckhome}/apitoken.aclpolicy":
      owner	=> "rundeck",
      group	=> "rundeck",
      content	=> template ('rundeck/apitoken.aclpolicy');

    "${rundeckhome}/framework.properties":
      owner	=> "rundeck",
      group	=> "rundeck",
      content	=> template('rundeck/jaas-loginmodule.conf');

    "${rundeckhome}/log4j.properties":
      owner	=> "rundeck",
      group     => "rundeck",
      content	=> template('rundeck/log4j.properties');

    "${rundeckhome}/profile":
      owner	=> "rundeck",
      group	=> "rundeck",
      content	=> template('rundeck/profile');

    "${rundeckhome}/project.properties":
      owner	=> "rundeck",
      group	=> "rundeck",
      content	=> template('rundeck/project.properties');

    "${rundeckhome}/realm.properties":
      owner	=> "rundeck",
      group	=> "rundeck",
      content	=> template('rundeck/realm.properties');
    
    "${rundeckhome}/rundeck-config.properties":
      owner	=> "rundeck",
      group	=> "rundeck",
      content	=> template('rundeck/rundeck-config.properties');

    "${rundeckhome}/ssl/ssl.properties":
      owner	=> "rundeck",
      group	=> "rundeck",
      content   => template('rundeck/ssl.properties');
  }  

}
