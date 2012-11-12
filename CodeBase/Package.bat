@echo off

IF EXIST "NuGetTemp" rmdir /S /Q "NuGetTemp"

IF NOT EXIST "Elmah.RavenDB\bin\Release\Elmah.RavenDB.dll" 	(
	ECHO Build the solution in Release configuration before creating the NuGet package
	EXIT /B
)


mkdir "NuGetTemp"
mkdir "NuGetTemp/lib"
mkdir "NuGetTemp/lib/net40"
mkdir "NuGetTemp/content/net40"

copy "Elmah.RavenDB\bin\Release\Elmah.RavenDb.dll" "NuGetTemp/lib/net40"
copy "Elmah.RavenDB\bin\Release\Elmah.RavenDb.pdb" "NuGetTemp/lib/net40"
copy "Elmah.RavenDB\web.config.transform" "NuGetTemp/content/net40"
copy "Elmah.RavenDB\Elmah.RavenDB.nuspec" "NuGetTemp"

"./.nuget/nuget" pack "./NuGetTemp/Elmah.RavenDB.nuspec"



rmdir /S /Q "NuGetTemp"