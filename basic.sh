//remove folder 
sudo rm -rf folderName 

//remove file 
rm fileName

//copy from 1 place to other
cp dir1 dir2

//make a new diectory
mkdir folderName

//view file
 vi fileName.ext
  esc + shift + : +wq //close
  
vim fileName.ext
  esc + shift + :  q! //close

//find word in system
grep -r "someText" 
//mac
grep -r  "someText" * 

//find filename 

find /home/ubuntu/Desktop -name *someFile.jsp*


===== SCP things ====-

//secure - copy file to ssh 
scp someFile.txt userX@192.168.1.10:/temp/apple/

//secure - copy folder to ssh 
scp -r someFolder/ userX@192.168.1.10:/temp/apple/

//secure -copy file from ssh 
scp userX@192.168.1.10:/temp/apple/some.txt /some/dir/

//secure -copy folder from ssh 
scp userX@192.168.1.10:/temp/apple/ /some/dir/

// scp file from server to local using pem key
scp -i example-key.pem ubuntu@example.com:/home/john/Desktop/some.txt /some/local/dir/

// scp folder/recursively from server to local using pem key
scp -r -i example-key.pem ubuntu@example.com:/home/john/Desktop/samples/ /some/local/dir/

// scp file from local to server using pem key
scp -i example-key.pem /some/local/dir/ ubuntu@example.com:/home/john/Desktop/some.txt

// scp folder/recursively from local to server using pem key
scp -r -i example-key.pem /some/local/dir/ ubuntu@example.com:/home/john/Desktop/samples/ 



//copy locally
cp  /home/a.txt  .

cp /home/a.txt /home/Desktop


ssh user@192.168.1.10

//remove files
rm somefile.txt
rm -r /home
rm -rf /some/dir/*

//shutdown / restart server
sudo shutdown -P now

sudo reboot




//zip files
sudo zip -r zip_name.zip .

//unzip files , to a folder
unzip zip_name.zip -d unzipped_data/

//unzip in the same dir
unzip zip_name.zip


//see files size in a dir
$> du -hs *

//see the dir size
$> du -hs .




//see cpu info
$> lscpu

//see ram info
$> free --mega
$> free -h
$ vmstat -s

//see cpu usage and top processes
$> top

// ubuntu see time up
$> uptime
//shows last boot time
$> who -b

//shows total uptime
$>  uptime

Dump data from DB to file
$>  mysqldump -u [uname] -p[pass] db_name > db_backup.sql

add data from file into DB
$>   mysql -u [uname] -p[pass] db_name < db_backup.sql 


//record everything in terminal 
$> script -a /some/dir/my_terminal_activities  //-a to append the output

https://www.ostechnix.com/record-everything-terminal/

//permissions files
$> chmod 777 -R .
//mac
$>  chmod -R 777 .

// compress and decompress tar
//extract in same folder
sudo tar -xvzf jre-8u161-linux-x64.tar.gz 
 //extract in another folder
tar -zxf jdk-9.0.4_linux-x64_bin.tar.gz -C /opt/java
//Compress an Entire Directory or a Single File
tar -czvf name-of-archive.tar.gz /path/to/directory-or-file

//zip files
sudo zip -r zip_name.zip .

//unzip files , to a folder
unzip zip_name.zip -d unzipped_data/

//unzip in the same dir
unzip zip_name.zip

//create 100 copies using ubuntu
$> for i in {1..100}; do cp cats_info.pdf "cats_info_$i.pdf"; done

//see network activity
$> tcpdump -i eth0 

//create multiple copies of a file
$> for i in {1..300}; do cp example.pdf "BULK_NEW_FILE_$i.pdf"; done


//upgrade a package 
$> sudo apt-get install --only-upgrade <packagename>


//see disk free / used space
$> df -h

//list of storages
$ lsblk

// print all or part of environment
$> printenv

// find the home of apps , where to find the apps ( eg : you want to find where is java application )
$ echo $PATH

//find something in a command's output, can be used with history
$ echo apple | grep "app"
$history | grep "startup"

//remove terminal history
$ history -c
OR
$ echo > ~/.bash_history
AND for root
$ echo > ~/.bash_history


// use use to download file
$ curl "https://example.com/some.zip" -o "custom.zip"
$ wget -O custom.zip http://example.com/some.zip


//run one command into another

$ wget -O file_"$(date +%s)".html satanlabs.com
$ echo `date`
$ echo `whoami`

// print/use env. variables in command
#!/bin/bash
STR="John Singh"
echo $STR
echo "hello from $STR"


//change owner of a file/folder
$ chown _some_username_ /dir/to/file/
$ chown someUser:someGroup /dir/to/file/

// uninstall remove purge application(s)
$ sudo apt-get --purge remove openjdk-8-jdk
$ sudo apt-get purge openjdk*

// split a file
$  split some_file.txt
$  split -l 300 some_file.txt
$  split -l 300 some_file.txt --verbose

// create new user
$ sudo adduser someUsername

// create password for a user
$ sudo passwd someUsername

// make a user sudoer
$ usermod -aG sudo username

//login as another user ( if you have the priviledge )
$ su - someUsername

// change timezone of the machine to IST
$ sudo timedatectl set-timezone Asia/Kolkata

// do something forever and in intervals
// linux
$ while true ; do ; curl g.co ; sleep 10 ; done
//mac
$ while true ; do curl g.co ; sleep 10 ; done

//telnet cmd. for check if a port is reachable (and reposonding)
$ telnet satanlabs.com 4805

/************ NOHUP *************/
//nohup -> run program in background (and kill it)

$ nohup some_cmd &
//it will give a PID
//you can kill that process by :
$ kill -9 PID

/****************************/

//sha-256 hash calculate
//mac
$ shasum -a 256 someFile.txt

//ubuntu
$ 
/****************************/


