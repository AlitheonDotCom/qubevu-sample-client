1. Make sure that JDK and Apache Maven are installed and run correctly
(Get maven here: http://maven.apache.org/download.cgi, follow the installation instruction in the same page)

2. Extract QubeVuSampleClient.Java.zip, edit  all occurrences of the url string of the web services in QubeVuSampleClient.java and TestClient.java to point to the
correct address
Eg: http://192.168.2.200/WebServices/QubeVuService/ --> http://192.168.x.x/WebServices/QubeVuService/

3. To build the sample code, open a CLI, go to QubeVuSampleClient.Java directory, run
mvn package

4. Run the sample test once successfully built

4.1 To get status and configurations or restart the QubeVu program
mvn exec:java -Dexec.mainClass=QubeVuSampleClient

By default, the sample use String.class as the return type for all the web service calls.
The sample client will try to:
 - Get the QubeVu status by calling web service operation named Status
 - Create a capture definition name "QubeVuSampleClient" by calling CreateCaptureDefinition and pass "QubeVuSampleClient" as parameter
 - Get detail info of the created capture definition by calling GetCaptureDefinition and pass "QubeVuSampleClient" as parameter
 - Get a list of capture definitions by calling CaptureDefinitionList
 - Manually trigger a dimension/image capture by calling Capture
 - Delete the created "QubeVuSampleClient" capture definition by calling DeleteCaptureDefinition and pass "QubeVuSampleClient" as parameter
 - Restart the QubeVu application in the device
 
 Other return types can be obtained by calling  
 mvn exec:java -Dexec.mainClass=QubeVuSampleClient -Dexec.args="1" which will used wsdl generate reponse types
 
 To use URLConnection as transportation class 
 mvn exec:java -Dexec.mainClass=QubeVuSampleClient -Dexec.args="2"
   
 
4.2 To get the dimensions:
mvn exec:java -Dexec.mainClass=TestClient

This sample will demonstrate the usage of the web service operations get the captured dimensions and images information by calling the service operations
Base on the return status, it will then get the dimensioning and image information from the captured data.
 


 
