Developer Setup
===============

## Install JRE

### Download JRE:
Please ensure that you are using a version of the Java 8 SE Runtime Environment released PRIOR TO April of 2019.
The "8u202" release at the archive page below is the last release prior to an unfavorable change in licesnse terms:
https://www.oracle.com/technetwork/java/javase/downloads/java-archive-javase8-2177648.html
 
### Set JAVA_HOME

Set "JAVA_HOME" environment variable (the path may differ based on the version you download):
```
C:\Program Files\Java\jre1.8.0_202\
```

### Install Maven

https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip

Unzip to C:\Dev and add the directory "C:/Dev/apache-maven-3.3.9/bin" folder to your PATH environment variable

### Install NullSoft Scriptable Installer (3.03)

https://sourceforge.net/projects/nsis/?source=typ_redirect

### Install WiX 3.1.1

http://wixtoolset.org/releases/v3.11.1/stable

### Clone test repository containing new build environment:

http://10.101.20.145/kconnors/Deployment

### Run build

* Open command prompt into new clone (assuming c:\Dev\Hawkeye\Deployment)
    * Start > Run > cmd
    * cd c:\Dev\Hawkeye\Deployment
* Run Maven
    * mvn package
    * [This should now download a whopping boatload of stuff and then begin a compilation of the source code]
    * Look for results in the "target" folder
