param ($javaVersion, $perm)

switch ($javaVersion) {
	"Java 1.2" { $env:JAVA_HOME = "" }
	"Java 1.3" { $env:JAVA_HOME = "" }
	"Java 1.4" { $env:JAVA_HOME = "" }
	"Java 5" { $env:JAVA_HOME = "" }
	"Java 6" { $env:JAVA_HOME = "" }
	"Java 7" { $env:JAVA_HOME = "" }
	"Java 8" { $env:JAVA_HOME = "D:\Programming\EclipseAdoptium\jdk-8.0.382.5-hotspot" }
	"Java 9" { $env:JAVA_HOME = "" }
	"Java 10" { $env:JAVA_HOME = "" }
	"Java 11" { $env:JAVA_HOME = "" }
	"Java 12" { $env:JAVA_HOME = "" }
	"Java 13" { $env:JAVA_HOME = "" }
	"Java 14" { $env:JAVA_HOME = "" }
	"Java 15" { $env:JAVA_HOME = "" }
	"Java 16" { $env:JAVA_HOME = "" }
	"Java 17" { $env:JAVA_HOME = "D:\Programming\EclipseAdoptium\jdk-17.0.8.7-hotspot" }
	"Java 18" { $env:JAVA_HOME = "" }
	"Java 19" { $env:JAVA_HOME = "" }
	"Java 20" { $env:JAVA_HOME = "" }
	"Java 21" { $env:JAVA_HOME = "" }
}

if ($perm -eq "perm") {
  [Environment]::SetEnvironmentVariable("JAVA_HOME", $env:JAVA_HOME, [System.EnvironmentVariableTarget]::Machine)
}

$env:Path = $env:JAVA_HOME + '\bin;' + $env:Path

Write-Output "$javaVersion activated."
