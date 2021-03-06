﻿#This Powershell script removes superfluous printers from a new Windows 10 PC.  
#August 1, 2018
#Josh Gold

#Forces my script to follow Powershell best practices
Set-StrictMode -Version Latest
$ErrorActionPreference = 'SilentlyContinue'

$PrintersToRemove = @("Microsoft XPS Document Writer", "Fax", "OneNote", "Send To OneNote 16")
#$drivers = Get-PrinterDriver -Name

foreach ($Printer in $PrintersToRemove)
{
    if (Get-Printer -Name -eq $Printer) {
      Remove-Printer -Name $PrintersToRemove
    }
    else {
      continue
    }

      #Fax does not have a traditional print driver, so we must first check if this printer is the Microsoft Fax
    #If ($PrintersToRemove -ne "Fax"){

        #Get the printer driver name for the current printer and remove that driver
        #$PrinterDriver = Get-PrinterDriver -Name $Printer
        #Remove-PrinterDriver -Name $PrinterDriver
    #}
}
