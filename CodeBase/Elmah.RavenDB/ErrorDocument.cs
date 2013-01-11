using System;

namespace Elmah
{
    public class ErrorDocument
    {
        public string Id { get; set; }
        public Error Error { get; set; }
        public string ErrorXml { get; set; }
        public string ApplicationName { get; set; }
    }
}