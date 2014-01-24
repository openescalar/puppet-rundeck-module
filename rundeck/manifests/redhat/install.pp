class rundeck::redhat::install (

) {

  file {
    "/etc/yum.repos.d/rundeck.repo":
	source		=> 'puppet:///modules/rundeck/rundeck.repo';
  }

  package {
    "java-1.7.0-openjdk":
      ensure		=> "installed";
    "rundeck":
      ensure		=> "installed",
      require		=> File["/etc/yum.repos.d/rundeck.repo"];
  }

}
