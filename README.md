#Script to Install all Dependencies for [MEAN.js](https://github.com/meanjs/mean) Boilerplate
##Details
This script is designed for Ubuntu servers: it has been tested on a clean Amazon EC2 Ubuntu 14.04 AWS server, and installs the full MEAN.js dependencies as well as placing the MEAN.js boilerplate into the current directory in a folder called mean.js. Please note that you must be root user (or have root permissions) to run this script.

##Downloading the script
To download this script from github, you can:
###Clone the Git Repository

```bash
git clone https://github.com/%URL%
```
###Download the Repository zip file
```bash
wget https://github.com/%URL%
```

Both of these download the script into a folder on the desktop called MeanJSInstallScript.

##Installation
To run the script, you need should run the following commands: 
```bash
chmod +x MeanJSInstallScript/install.sh; sh MeanJSInstallScript/install.sh
```
After running the script, it runs for about 30 minutes and after that you should have a MEAN.js boiler plate in your current working directory.

###Testing your boiler plate
```bash
grunt
```
Your application should be running on port 3000, and if your firewall settings are open, you can view it through your browser using YOURIPADDRESS:3000.


##Credits
Created with the help of [this Tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-an-ubuntu-14-04-server) and [this MongoDB](https://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/) resource.

## License
(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.