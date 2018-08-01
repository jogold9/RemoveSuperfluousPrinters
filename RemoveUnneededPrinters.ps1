#This script removes unneeded printers from a new Windows 10 PC.  Perhaps later on we will remove print drivers as well.
#August 1, 2018
#Josh Gold

#Forces my script to follow Powershell best practices so I don't do too many dumb mistakes
Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$PrintersToRemove = @("Microsoft XPS Document Writer", "Fax", "Send to OneNote 16")

#$drivers = Get-PrinterDriver -Name 

foreach ($PrintersToRemove in $PrintersToRemove)
{
    Remove-Printer -Name $PrintersToRemove
    
    #Fax does not have a traditional print driver, so we must first check if this printer is the Microsoft Fax
    #If ($PrintersToRemove -ne "Fax"){
    
        #Get the printer driver name for the current printer and remove that driver
        #$PrinterDriver = Get-PrinterDriver -Name $PrintersToRemove
        #Remove-PrinterDriver -Name $PrinterDriver
    #}
}