using System;

namespace Elmah.RavenDb
{
    public class ErrorDocument
    {
        public string Id { get; set; }
        public Error Error { get; set; }
        public string AllXml { get; set; }
    }
}