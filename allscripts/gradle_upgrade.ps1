$env:GRADLE_HOME = "$args"
[Environment]::SetEnvironmentVariable("GRADLE_HOME", $env:GRADLE_HOME, [System.EnvironmentVariableTarget]::Machine)