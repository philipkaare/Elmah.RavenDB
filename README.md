# Elmah.RavenDB

Elmah.RavenDB is a [RavenDB](http://ravendb.net) storage backend for 
[ELMAH](http://code.google.com/p/elmah/).

## License

Elmah.RavenDB itself is licensed under the MIT license.

## Installation

Elmah.RavenDB can be installed in two ways. The easiest is to install 
the Elmah package that includes all the config, 
then install Elmah.RavenDB which will add the errorLogger to the 
`<elmah>` config section.

    PM> Install-Package elmah
    PM> Install-Package Elmah.RavenDB

The second method works better if you already have ELMAH installed or 
you wish to do all the configuration manually. Simply install the 
Elmah.RavenDB package.

    PM> Install-Package Elmah.RavenDB

## Connection Strings

Both of these installation methods configure the RavenDbErrorLog to
use a connectionString named "Elmah". You will need to manually 
edit the connection strings to add a valid RavenDB connection string.

e.g.

    <connectionStrings>
        <add name="Elmah" connectionString="Url=http://localhost:8080;Database=MyApp.Elmah" />
    </connectionStrings>