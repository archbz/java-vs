$env:MAVEN_HOME = "$args"
[Environment]::SetEnvironmentVariable("MAVEN_HOME", $env:MAVEN_HOME, [System.EnvironmentVariableTarget]::Machine)