# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/thomas/Documentos/DIEL/esp-idf-v5.0/components/bootloader/subproject"
  "/home/thomas/Documentos/DIEL/esp-idf-v5.0/examples/peripherals/uart/uart_echo/build/bootloader"
  "/home/thomas/Documentos/DIEL/esp-idf-v5.0/examples/peripherals/uart/uart_echo/build/bootloader-prefix"
  "/home/thomas/Documentos/DIEL/esp-idf-v5.0/examples/peripherals/uart/uart_echo/build/bootloader-prefix/tmp"
  "/home/thomas/Documentos/DIEL/esp-idf-v5.0/examples/peripherals/uart/uart_echo/build/bootloader-prefix/src/bootloader-stamp"
  "/home/thomas/Documentos/DIEL/esp-idf-v5.0/examples/peripherals/uart/uart_echo/build/bootloader-prefix/src"
  "/home/thomas/Documentos/DIEL/esp-idf-v5.0/examples/peripherals/uart/uart_echo/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/thomas/Documentos/DIEL/esp-idf-v5.0/examples/peripherals/uart/uart_echo/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/thomas/Documentos/DIEL/esp-idf-v5.0/examples/peripherals/uart/uart_echo/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
