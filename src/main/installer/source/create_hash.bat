dependencies\hashkeytool\fciv.exe -add ${basedir}\target\\${project.build.partnumber}-v${parsedVersion.majorVersion}.${parsedVersion.minorVersion}.${parsedVersion.incrementalVersion}.${timestamp}.exe -wp -both -xml  ${basedir}\target\hash.xml
dependencies\hashkeytool\fciv.exe -list -both -xml ${basedir}\target\hash.xml > ${basedir}\target\hash.txt
