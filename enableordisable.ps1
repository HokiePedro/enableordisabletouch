$devman = "C:\Users\pedro\Downloads\DeviceManagement\Release\DeviceManagement.psd1"
import-module $devman
Function checkTouchScreen{return Get-Device | Sort-Object -Property Name | Where-Object -Property ConfigurationFlags -Like '*disabled*' | ft Name}
if(checkTouchScreen -contains "HID-compliant touch screen")
{get-device |where-object -property name -eq "HID-compliant touch screen" | enable-device}else
{get-device |where-object -property name -eq "HID-compliant touch screen" | disable-device}