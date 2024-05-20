dependencies\hashkeytool\fciv.exe -add ${basedir}\target\\${project.build.offline_partnumber}-v${parsedVersion.majorVersion}.${parsedVersion.minorVersion}.${parsedVersion.incrementalVersion}.${timestamp}.exe -wp -both -xml  ${basedir}\target\offlinehash.xml
dependencies\hashkeytool\fciv.exe -list -both -xml  ${basedir}\target\offlinehash.xml > ${basedir}\target\offlinehash.txt
