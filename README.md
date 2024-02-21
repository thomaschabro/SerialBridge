# Serial Bridge

Serial bridge created for ESP32 devices.

Firstly, the firmware reads the data via UART by default, in the code, it is used the UART2 (pins 16 and 17, representing RX2 and TX2, respectively). After that, the data received is sent to a local mqtt broker. 

To open and read the messages received on the broker, in a computer, it is necessary that the pc is connected to the same wifi of the ESP32. Then, you can run the command
  mosquitto_sub -h mqtt.eclipseprojects.io -t my_topic
and the messages will be printed in the kernel.
