# install java-oracle ( linux , ubuntu OR maybe mac )

## These steps are good for a single version of Java.



1. ``maybe`` remove the openjdk(s).

```
    $ sudo apt-get --purge remove openjdk-8-jdk
    
    $ sudo apt-get purge openjdk*
```
2. Download the required jdk-version from the official-website ( recommended ).

3. Extract the download. 

    ( 
    
      for zip    : ` $ unzip some_file.zip`
      
      for bin    : ` $ unzip some_file.bin`
      
      for tar.gz : ` $ tar -xvzf some_file.tar.gz`
      
    )

4. Go to the desired directory, where you want to keep the extracted-jdk. 

    Eg : `/usr/bin` OR `/opt/` OR `/usr/lib/` OR it can be literally any-place in the file-system.

   > Let us choose `/usr/lib/` .

5. Go to `/usr/lib/` and create a directory `jdk`.
```
     $ cd /usr/lib/

     $ mkdir jdk
```
6. Then in `jdk` folder, copy the extracted-jdk ( from step 3 ).
```
    $ cp -r /jdk/dir/folder/  /usr/lib/jdk/
```
7. Verify the succesful copy by running .It should return the required version of java ( you dowloaded ).
```
    $ /usr/lib/jdk/<jdk-folder-name>/bin/java -version
```
8. Open ~/.bashrc file (present in home-dir) ( using vim or nano ) and the following data in the end :

    Here, I used `jdk1.8.0_251` folder.

    ```

    JAVA_HOME=/usr/lib/jdk/jdk1.8.0_251

    PATH=$PATH:$JAVA_HOME/bin

    ```

9. Save `.bashrc` file and reload it by : 
```
    $ source ~/.bashrc
```
10. To verify finally run : 

``` 
    $ java -version 
```

> RESULT : 

```
    java version "1.8.0_251"
    Java(TM) SE Runtime Environment (build 1.8.0_251-b08)
    Java HotSpot(TM) 64-Bit Server VM (build 25.251-b08, mixed mode)
```

===== EOD ======

