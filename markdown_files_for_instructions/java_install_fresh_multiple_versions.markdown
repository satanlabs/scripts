# install java-oracle ( linux , ubuntu OR maybe mac )

## These steps are good if you want to have/use multiple versions of Java.

1. Download the required version(s) of Java-JDK from official websites (maybe oracle)
 
    - #### IMPORTANT : make sure you download the file that fits your machine's CPU's architecture.

    ```
        Eg : 
            jdk-6u45-linux-x64.bin  

            jdk-7u80-linux-x64.tar.gz 

            jdk-8u251-linux-x64.tar.gz  

            jdk-9.0.4_linux-x64_bin.tar.gz
    ```

2. Extract all of them ( using zip , tar commands )

3. Go to `/usr/lib` and create folder `jdk`.

4. Copy all of the extracted-jdks ( from step 2 ) in `/usr/lib/jdk` folder .

5. Open `~/.bashrc` file and copy :

    ```
    JAVA_6_HOME=/usr/lib/jdk/jdk1.6.0_45
    JAVA_7_HOME=/usr/lib/jdk/jdk1.7.0_80
    JAVA_8_HOME=/usr/lib/jdk/jdk1.8.0_251
    JAVA_9_HOME=/usr/lib/jdk/jdk-9.0.4

    JAVA_HOME=$JAVA_8_HOME

    PATH=$PATH:$JAVA_HOME/bin

    ```
6. Save .bashrc file and reload it by :
```
    $ source ~/.bashrc
```

7. Verify install by running : 

    A.
        ``` 
        
        $ java -version
        
        ````
        ( it should return version 8 )

    B.
        ```

        $ ` $JAVA_6_HOME/bin/java -version `

        $ ` $JAVA_7_HOME/bin/java -version `

        $ ` $JAVA_8_HOME/bin/java -version `

        $ ` $JAVA_9_HOME/bin/java -version `

        ```
        ( all commands should return their respective versions. )


        ( PS : `$`(dollar-sign) before `JAVA_9_HOME` is reqired, as you are accessing an environment variable.


========= EOD ========


