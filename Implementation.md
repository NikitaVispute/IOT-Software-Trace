Hardware implementation <br>
<br>
1.	School Unit<br>
Connections<br>
•	The components used are RFID RC522 card sensor/reader, Arduino UNO R3 Atmega 328P and ESP8266 Transceiver Wi-Fi Module.<br>
•	The RFID reader’s ground port is connected to the Arduino’s ground port. While connecting two devices for communication, their ground connection has to be equalized. <br>
•	Similarly, the ground port of the ESP 8266 Wi-Fi module is connected to the ground port of the Arduino.<br>
•	The RFID reader’s power port of 3.3V is connected to the Arduino’s power port.<br>
•	There are two RX, TX pins on every module for receiving a signal and transmission of signal respectively.<br>
•	The RX pin of one component is always connected to the TX pin of the other component for communication between the two components.<br>
•	Hence the RX, TX pins of the Wi-Fi module are connected to the Arduino at ports 7, 8.<br>
•	The RX, TX pins of the Arduino are programmed for connection to the computer.<br>
•	The required connections are made from the RFI card sensor to the Arduino for data transmission.<br>
•	Serial communication takes place between the components, ie. One bit of data is sent at a time over a communication channel in a sequential order.<br>
•	The Wi-Fi module need to be powered while in use by using a 5V power adapter.<br>
•	Connection of the Arduino board to the computer is done using the USB cord.<br>
Working<br>
•	Initially after the Arduino code has been written, it is burnt onto the chip where it is saved in its memory.<br>
•	From then on, once the connections are made, the program starts executing where the Arduino first checks if the ESP 8266 module have been powered on and initialized as well as the sensor.<br>
•	Since Wi-Fi connection is required for sending the data read from the reader over to the web server, a mobile hotspot is created and the Wi-Fi module latches on to it.<br>
•	Once the setup is complete, on the Arduino software IDE, under the “Serial Monitor” tab, the user is requested to approximate the card towards the reader.<br>
•	After the tag ID is read by the reader, the data is sent over to the Arduino chip which checks the ID by matching to the ones in its database.<br>
•	If the ID matches, it displays a message on the IDE that access is authorized or else it will display that the access is denied.<br>
•	Once that is done, meanwhile the TCP connection is begun for transmission of data over the network.<br>
•	The tag data and ID is sent as a string onto the server and onto the requested linked page from the user will be able to view the details on the portal.<br>
•	Once the transmission is done, the connection is closed by the Arduino chip.<br>
<br>
2.	Bus Unit<br>
Connections:<br>
•	For the bus unit the components used are GPS-GSM SIM 808 Module with the external GPS antenna and Arduino board.<br>
•	The RX, TX pins of the GPS module are connected to the No. 7, 8 pins of the Arduino board.<br>
•	The ground connection of the Arduino board and GPS module are equalized.<br>
•	The external antenna is connected to the antenna port on the GPS module.<br>
•	The GPS Module is powered by using a 9V power adapter.<br>
•	The Arduino board is connected to the computer using the USB cable and communication is done by the pre-defined RX, TX pins.<br>
•	A SIM card is required to send the GPS coordinates over the network onto the web server using the GSM modem.<br>
•	The GSM modem has its own fixed antenna.<br>
Working:<br>
•	The GPS receiver antenna is placed next to an open environment from where it would be able to receive the line-of-sight distance from the various satellites and then calculate the average distance for finding out the latitude and longitude.<br>
•	On the Arduino software IDE, the Serial Monitor page displays the initialization of the Arduino setup and then the GPS module.<br>
•	The GPS module sends the location data to the Arduino software consistently where it is filtered and only the location part i.e. latitude and longitude is stored in the form of two strings.<br>
•	After this, using the internet connection, TCP connection is established for server communication.<br>
•	The location strings are then transmitted to the web server where they are displayed to the users as a location in Maps.<br>
 
<br><br>
Web Server implementation<br>

•	The website was developed in Visual Studio IDE in ASP.Net<br>
•	Two panels were made: admin panel and parent panel.<br>
•	The admin panel is for the school authorities.<br>
•	The admin panel has four features:<br>
1.	Add student information.<br>
2.	Edit student information.<br>
3.	View Bus Location.<br>
4.	View Student Entry and Exit Time.<br>
•	The parent panel has two main features:<br>
1.	View bus location<br>
2.	View student entry and exit time<br>
3.	They can also view the student identification information but cannot edit it.<br>
•	For both panels, an authentication page is coded wherein the admin will login to the website with their username and password and the parent user can login with their phone number and set password as the username and password required.<br>
•	The next webpage is the home page that enlists the features and contact address of the school.<br>
•	“View bus location” page displays the log file with the most recent entry as the topmost.<br>
•	It displays the time, date, latitude and longitude of the most recent current bus location.<br>
•	There is also an option to delete the entries.<br>
•	Another action attached to each entry in the record is to view the location in Maps.<br>
•	On selecting this action, the latitude and longitude coordinates are submitted and opened as a location marker in Maps.<br>
•	“View entry and exit time” in the admin panel displays the log of all the RFID tags and the date and time they were read by the card sensor as the in-time and out-time.<br>
•	The back-end database was created separately where multiple tables were created using MS SQL Server 2012. This is already available in conjunction with Visual Studio as programming the database requires basic SQL.<br>
•	Four tables were created:<br>
1.	Admin login table that contains username, password, admin ID columns<br>
2.	User Master table that contains the following columns -  user ID, Student ID, RFID, full name of student, contact no. of parent, Address, password set by parent.<br>
3.	Data table that consists of columns ID, latitude, longitude and datetime of the entry.<br>
4.	Data table 1 that contains columns ID, RFID, entry date and time and exit date and time.<br>
•	After the website was completed it was hosted on a server hosting space called my-demo where the website can be viewed directly with an URL. For the server space the database had to be created again while uploading the website files onto the server.<br>
•	Another feature added is that of parent notification. An SMS notification is sent to the parent as soon as the student enters or leaves the school or bus.<br>
•	This occurs once the data has been uploaded onto the webserver. A method is written to retrieve the respective phone number of the parent and then send and SMS to them.<br>
•	This ensures fast transmission of notification by SMS as opposed to its display on the android application which may not occur due to poor or no internet connection availability.<br>

Android Application<br>

•	The android supplication was coded using Android Studio IDE.<br>
•	The Android application consists of two main modules: user authentication and current bus location display in Maps.<br>
•	10 android activities were created to make the two modules:<br>
1.	Mainpage Activity: 
This page opens up on clicking the launcher icon and provides two features log in button or register button for old and new users respectively.
2.	Login Activity:
This page is for already registered users who can login by inserting their phone number as username and set password same as that on the web server.
3.	Login Activity 2: 
This page is pertaining to the new user registration. Details like name of parent, school name, name of student, Student ID, email address, phone number of parent, username and password are required.
4.	Registration Success Activity: 
This page is displayed on successful registration as well as successful log in.
5.	Splash Activity: 
This is a splash screen displayed for a few seconds before displaying the main page for the location module.
6.	Home Activity: 
This is the mainpage for the location tracking module. It displays two buttons – get location and exit.
7.	Maps Activity: 
On clicking the “get location” button the Maps activity opens up that displays the last saved current bus location on the web server.
8.	ConnectionM Activity:
This page creates a web service from the android application to the web server to retrieve the location coordinates from the web server. The connection is established from the initialization of this activity and the web server and app get linked.
9.	PlaceData Activity: 
This page stores the latitude and longitude data retrieved from the web server log. It is a getter-setter method.
10.	ProgressDialog Activity: 
This page produces a loading animation while the Maps display the real time location in the background.<br>
•	There is client-side validation of all the user input fields in the Login Activity 2 page to ensure that all the correct details are inserted.
•	The back-end database was initially created using MySQL Database and was later linked to the web server.
