BootStrap: docker
From: ubuntu:16.04
%label
	Author R.S.Cushing@uva.nl
	Version v0.0.1
%setup
   # commands to be executed on host outside container during bootstrap
%test
   # commands to be executed within container at close of bootstrap process
%environment
%runscript
   # commands to be executed when the container runs
   echo "LD_LIBRARY_PATH: $LD_LIBRARY_PATH"
   echo "PATH: $PATH"
   echo "Arguments received: $*"
   exec "$@"
%post
   # commands to be executed inside container during bootstrap
   apt-get update && apt-get install -y python wget
   
