# Serial Bridge

Serial bridge created for ESP32 devices.

Firstly, the firmware reads the data via UART by default, in the code, it is used the UART2 (pins 16 and 17, representing RX2 and TX2, respectively). After that, the data received is sent to a local mqtt broker. 

## Hardware connections

The user will connect the ESP32 to the device whose serial they want to read (SRC_DEVICE) as it follows:

 | SRC_DEVICE | ESP32   |
 | ---------- | ------- |
 |  RX Pin    | GPIO 16 |
 |  TX Pin    | GPIO 17 |

 ## Usage guide

First of all, the user must change the Wifi configuration on the code, replacing SSID by the SSID (name) of your wifi network, and the PASSWORD by the actual password of the network. With that done, now it's time to flash the code into the ESP32 that will be used. For that, it's necessary to connect your pc via USB to the ESP32, and in a kernel with ESP IDF exported, run:

idf.py -p <PORT> build flash monitor

This will build the project, flash into the ESP and then show what it is reading from the UART communication. It's not printed, but while it is printing the data of the source device, the code is also sendind all of the messages to the local broker, via mqtt.

To open the broker and actually see the serial output of the source device in a computer, the user need to connect to the broker, using whatever way they prefer. In this case, I used Mosquitto (a Open Source message broker, which is natural for Linux). So, if you are in a Linux distro, it is possible to connect to the broker and read all messages just by using the command:

> mosquitto_sub -h mqtt.eclipseprojects.io -t my_topic

**NOTE**
To open and read the messages received on the broker, it is **mandatory** that the pc is connected to the same wifi you configured on the ESP32 code.
