# Get-InteractiveLogons
Receive a report of network user logins in Active Directory along with the system IP and login type

***************************************************************************************************
---------------------------------------------------------------------------------------------------
***************************************************************************************************

With this script, all you need to do is have CMD access to the target AD, then you can very neatly extract the list of users along with the IPs they are connected to and put them into a CSV file.

*Not detectable in SOC and intrusion detection systems

*Must be run on a server with Administrator access.

*If you run it on a client, you will only see logins from that machine.

*Supported operating systems:

-Windows Server 2012 / 2012 R2

-Windows Server 2016

-Windows Server 2019

-Windows Server 2022

-Even runs on Windows 10 and Windows 11 (for local testing)

