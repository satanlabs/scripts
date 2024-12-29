#spinner for ec2

i=1
sp="/-\|"
echo -n ' '
while [ true ]
do
  sleep 0.21
  printf "\b${sp:i++%${#sp}:1}"
done
