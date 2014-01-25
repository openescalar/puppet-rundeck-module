class rundeck::redhat::service (

) {

  require rundeck::redhat::postconfig

  service {

    "rundeck":
      ensure	=> "running";

  }

}
