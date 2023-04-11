# zapq-desktop
Easy desktop extension to drag'n'drop a file to compress or decompress it. It uses highest zpaq compression and automatically chooses the maximum amount of processors abailable.

Simply drag'n'drop a file onto the **zpaq-desktop.bat** file and it will automatically detect if it is a .zpaq file or not. If a zpaq file is detected it will be decompressed and if none is detected it will compress the file. Compressed and decompressed files are placed in the origin directory of the file that is processed.
Should also work with directories.


#### Setup
To use the script you have to change the **zpaq_exe** variable at the beginning of the script to the location of your zpaq executeable. You can download a zpaq executeable [here](https://github.com/zpaq/zpaq).
