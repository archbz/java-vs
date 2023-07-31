param ($javaVersion, $perm)

switch ($javaVersion) {
	"Java 8" { $env:JAVA_HOME = "D:\Programming\EclipseAdoptium\jdk-8.0.382.5-hotspot" }
	"Java 11" { $env:JAVA_HOME = "" }
	"Java 17" { $env:JAVA_HOME = "D:\Programming\EclipseAdoptium\jdk-17.0.8.7-hotspot" }
	"Graal 17" { $env:JAVA_HOME = "D:\Programming\EclipseAdoptium\graalvm-ce-java17-22.3.0" }
}

if ($perm -eq "perm") {
  [Environment]::SetEnvironmentVariable("JAVA_HOME", $env:JAVA_HOME, [System.EnvironmentVariableTarget]::Machine)
}

$env:Path = $env:JAVA_HOME + '\bin;' + $env:Path

Write-Output "$javaVersion activated."
