#!/bin/bash
result="SUCCESS"
echo "Starting Containter Automated Testing waiting 30 seconds for container to start up"
sleep 30

#This tests the main page of the application; we are just checking to see if the main page it up and running
HTTP_CODE=$(curl --write-out "%{http_code}\n" "http://localhost:8090/hello-world" --output output.txt --silent)
echo $HTTP_CODE
if [ "$HTTP_CODE" = "200" ]; then
	echo "Successful"
else
	echo "ERROR!"
	result="ERROR"
fi

#This second test will test the second url that does some addition calculation based on two passed in variables
HTTP_RESPONSE=$(curl -s "http://localhost:8090/hello-world/add?num1=2&num2=2")
echo $HTTP_RESPONSE
if [ $HTTP_RESPONSE = "4" ]; then
	echo "Successful"
else
	echo "ERROR!"
        result="ERROR"
fi





#This final section checks to see if the result variable is still set to SUCCESS; The return code will be set accordingly and Jenkins will handle the result of the testing script.
echo "Final Result=$result"
if [ $result = "SUCCESS" ]; then
	exit 0
else
	exit 9
fi

