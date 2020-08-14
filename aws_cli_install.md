
# Go to AWS official page ( for more info ) : ( version 1 and 2 )

https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html

# HERE we are installing Version-2.

 $ curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
 
 $ unzip awscliv2.zip
 
 $ sudo ./aws/install
 
 $ aws --version
 
 output : aws-cli/2.0.23 Python/3.7.3 Linux/5.3.0-1023-aws botocore/2.0.0dev27
 
 $ aws configure
 
 (follow steps )
 
 
 # Extra steps : 
 
 //to list all buckets 
 
 `$ aws s3 ls`
 
 //to copy data to s3 
 
 `$ aws s3 cp /some/folder/ s3://some-bucket --recursive`
 
 //to list list of all contents in an s3-bucket
 
 `$ aws s3 ls s3://some-bucket`
