School Unit:<br>
•	The main components to implement this part are Arduino micro-controller, RFID tag/reader and Wi-Fi Module.<br>
•	The RFID tag/reader will keep track of the entry and exit of the student into/from the school. <br>
•	A Wi-Fi module is used along with the Arduino micro-controller and the RFID Reader to transfer the RFID read data onto the web server accessible from school as well as by the parent. <br>
•	As soon as the student enters or leaves from the school entrance gate, the date and time will be uploaded on the web server from where parents as well as teachers can view the information.<br>
<br><br>
•	RFID tag ID is swiped at the school entrance and RFID reader detects the tag and checks with the database.<br>
•	If the ID is registered, it allows access to the student.<br>
•	The entry time and date of the student is recorded onto the web server database.<br>
•	Data is sent to the server using the Wi-Fi module.<br>
•	An SMS notification is sent to the parents when the student enters school.<br>
•	Same process occurs when student swipes ID to leave the school.<br>
 <br><br>
 
Bus Unit:<br>
•	The main components to implement this part are GPS-GSM Module, Arduino micro-controller as well as the Android application.<br>
•	The user must install the android application in order to view their child’s bus tracking information.<br>
•	He/she must first register at the admin/ school panel by giving their respective details as well as their child’s identification information. Once the details are stored into the database, the parents can view the child activity on the application after logging in. <br>
•	The GPS module will send the location of the bus while it is in-transit onto the web server.<br>
•	Thus parents can view the current bus location and monitor the bus route from time-to-time. <br>
•	If there is poor or no internet connectivity then the last location read from GPS will be stored on the server and displayed on parent request on the application. <br>
•	The live location of the bus provided by GPS can be accessed through the android application as well as the parent panel of the web server. <br>
•	Many of such already existing systems have poor GSM reception and hence to tackle this issue we are using an external antenna with the GSM module. <br>
<br><br>
•	RFID reader detects the RFID tag ID at the bus entrance and checks with the database.<br>
•	If the ID is registered, it allows access to the student.<br>
•	The entry time and date of the student into the bus is recorded onto the web server database.<br>
•	Data is sent to the web server using the Wi-Fi module.<br>
•	An SMS notification is sent to the parents when the student enters bus.<br>
•	Same process occurs when student leaves/de-boards the bus.<br>
•	As soon as the bus begins its journey, the GPS module is started.<br>
•	It gets the current bus location and sends it over to the web server in the form of coordinates using Arduino and the internet connection of the Bus Sim GSM module.<br>
•	It can be viewed in Maps on the server by both the school as well as the parents.<br>
•	From the web server, the location coordinates read into the Android application, and the location is displayed in Maps.<br>
•	The parent must first register on the App, then log in to view the bus location of his/her child.<br>
