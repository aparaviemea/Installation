<img width=220 src=https://github.com/aparaviemea/Installation/blob/main/images/Aparavi_logo_color_gray.jpg> 

# Aparavi EMEA Installation Templates

# Windows Server based Installation

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2faparaviemea%2fInstallation%2fmain%2fazuredeploy.json)  [![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3a%2f%2fraw.githubusercontent.com%2faparaviemea%2fInstallation%2fmain%2fazuredeploy.json)

This script is a subscription level template that creates an Azure Windows Server 2019 environment for Aparavi Installation suitable for an Aggregator/Collector and Agent setup.

## Usage:
#### Option 1
You can use the button [Deploy to Azure] above for the automatic deployment of the necessary Azure Resources. This script assumes that you have a valid Azure subscription and that your are logged in. 

#### Option 2
If you are familiar with PowerShell, you can use the PowerShell Script enclosed which will setup the entire Azure envinroment which is necessary for the Aparavi installation.
If you have any questions, contact martin.dobes@aparavi.com 

# Linux based Installation

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2faparaviemea%2fInstallation%2fmain%2fazuredeploy_linux.json)  [![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3a%2f%2fraw.githubusercontent.com%2faparaviemea%2fInstallation%2fmain%2fazuredeploy_linux.json)

This script is a subscription level template that creates a LINUX environment for Aparavi Installation suitable for an Aggregator/Collector and Agent setup.

## Usage:
#### Option 1
You can use the button [Deploy to Azure] above for the automatic deployment of the necessary Azure Resources. This script assumes that you have a valid Azure subscription and that your are logged in. 

#### Option 2
If you are familiar with PowerShell, you can use the PowerShell Script enclosed which will setup the entire Azure envinroment which is necessary for the Aparavi installation.


## Architecture

Folowing image explains the the architecture of the deployment ARM template

<img src=https://github.com/aparaviemea/Installation/blob/main/images/apa-architecture.png>

# Installation 
### Operating System Support 

The Aparavi software is supported on the following operating systems. 

- Windows OS (x64 only) 
- Windows Server 2019  
- Windows Server 2016  
- Windows Server 2012 R2  
- Windows 10 (Supported for Collector installation. Not as an Aggregator)
- Linux OS (x64 only)2
- Ubuntu 18.04 and 20.04 
- Debian 9.x and 10 
- Red Hat (RHEL) 8.x 
- CentOS 8.x 
- Suse Enterprise 15 
- Linux distributions must have libc 2.23 or greater installed 

### Database Support 
The Aggregator and Aggregator-Collector require a database to store file metadata. The database may be installed on the same server as an Aggregator or on a separate server accessible by the Aggregator. Multiple Aggregators may access the same database. Supported database types include: 

- MySQL 8.0.x

### Data Sources 
Aparavi software can access files systems on which the Aggregator-Collector or Collector is installed. In addition, Aparavi can access files using the SMB file share protocol. Over time the supported source types will grow to include other options.  

### Supported data sources include the following. 

### File Systems
- Windows file systems 
- Linux file systems 
- SMB file share protocols – 2.x and 3.x 

To access Windows file shares from Linux servers, Samba client libraries (libsmbclient) will be automatically installed by Aparavi on the Linux server. To access Linux files shares from Windows servers, Samba server libraries must be installed and configured on the linux server. 

### Documentation

The documentation files are in the section `Documentation`.



# ToDo List:

- **ARM Template with 2 VMs based on Windows Server 2019** for Aparavi Aggregator and Collector

- **ARM Template based on Linux and Docker Container ** for Aparavi Aggregator and Collector


