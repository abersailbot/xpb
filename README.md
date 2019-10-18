# eXperimental Polystyrene Boats

Repository for all the code and hardware designs for the eXperimental Polystyrene Boats. 


To clone, run:

$ git clone --recursive https://github.com/abersailbot/xpb
$ cd dewi

This recursively clones the repository and its submodules.

When new commits are added to the upstream repositories, you need to update the submodules. To do this, run:

$ git submodule update --remote

This will update the submodules to the latest commit on the default branch.

To update all submodules to the latest branch run:

    $ git submodule foreach git checkout master $ git submodule foreach git pull origin master

To deploy, run:

$ cd xpb-deploy
$ ./deploy.sh

