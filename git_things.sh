#### some git useful commands


# see history of a file ( in a  particular branch )
$ git log -p <filename>

###### conflict-resolving #######
 Lets say we want to put code from Branch `feature-x` into the `dev` , and there's a conflict.
 
 feature-x => dev
  
 Then , 
 1. $ git pull
 
 2. git checkout feature-x
 
 3. git pull origin dev
 
 4. Resolve them conflicts.
 
 5. Push changes to `feature-x`.
 
 #################################
 
 
 
