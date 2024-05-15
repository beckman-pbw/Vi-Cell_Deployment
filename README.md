# Deployment
This is the deployment package for the Hawkeye platform. This creates an installer for the product and rolls up artifacts from the
 * ApplicationSource
 * UserInterface
 * Controller
 * Algorithms
 
 ...projects.  These together form an installable release package.
 
 ## To build this project
 1. Install Git for Windows [INSERT LAST APPROVED VERSION]
 1. Install Visual Studio Professional (or greater) 2015 Update 3.
 1. Install Maven, Java Runtime Environment (JRE), NullSoft Scriptable Installer (NSI) and WiX [as described here](src/site/markdown/developer-setup.md)
 1. Clone the project from the FTC Github Server http://svusftcgit/Hawkeye/Deployment.git
    1. This document will assume you have cloned into the folder `c:\DEV\Hawkeye`.  This will create a folder `c:\DEV\Hawkeye\Deployment`.
 1. Open a command prompt and change to the newly-cloned repository
    1. `cd c:\DEV\Hawkeye\Deployment`
 1. Invoke Maven to execute the build process and generate the artifacts
    1. `mvn package`
    1. This will initially generate a significant amount of traffic as the build system retrives the correct dependency artifacts from the Beckman Coulter Amazon Web Services cloud cache.
 1. Upon sucessful completion, artifacts will be found in `c:\DEV\Hawkeye\Deployment\target`
 
 ## To recreate artifacts from a particular build
 1. Note the tag associated with the build
    1. Ex: `deployment_0.10.13`
 1. Execute the steps from the **To build this project** section of the document through opening a command prompt to the newly-cloned repository
 1. Use Git to checkout the repository to the desired state
    1. `git checkout deployment_0.10.13`
 1. Resume the steps from the **To build this project** section 
 
 ## Installer parameters (optional)
 1. Unattended (no user interaction required) installation: Pass '/S' to the installer exe. Example: C92745-v1.4.9.27225.exe /S
 
