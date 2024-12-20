import ballerina/data.xmldata;

type A_Action record {
    string \#content;
    @xmldata:Attribute
    string mustUnderstand;
};

@xmldata:Namespace {prefix: "h", uri: "http://htng.org/1.3/Header/"}
type H_TimeStamp record {
    string \#content;
};

type S_Header record {
    @xmldata:Namespace {prefix: "a", uri: "http://www.w3.org/2005/08/addressing"}
    A_Action Action;
    @xmldata:Namespace {prefix: "h", uri: "http://htng.org/1.3/Header/"}
    H_TimeStamp TimeStamp;
    @xmldata:Namespace {prefix: "a", uri: "http://www.w3.org/2005/08/addressing"}
    int RelatesTo;
    @xmldata:Namespace {prefix: "a", uri: "http://www.w3.org/2005/08/addressing"}
    string MessageID;
};

type Error record {
    @xmldata:Attribute
    string ShortText;
};

type Errors record {
    @xmldata:Namespace {uri: "http://www.opentravel.org/OTA/2003/05"}
    Error Error;
};

@xmldata:Namespace {uri: "http://www.opentravel.org/OTA/2003/05"}
type OTA_HotelDescriptiveContentNotifRS record {
    @xmldata:Namespace {uri: "http://www.opentravel.org/OTA/2003/05"}
    Errors Errors;
};

type S_Body record {
    @xmldata:Namespace {uri: "http://www.opentravel.org/OTA/2003/05"}
    OTA_HotelDescriptiveContentNotifRS OTA_HotelDescriptiveContentNotifRS;
};

@xmldata:Name {value: "Envelope"}
@xmldata:Namespace {prefix: "s", uri: "http://www.w3.org/2003/05/soap-envelope"}
type S_Envelope record {
    @xmldata:Namespace {prefix: "s", uri: "http://www.w3.org/2003/05/soap-envelope"}
    S_Header Header;
    @xmldata:Namespace {prefix: "s", uri: "http://www.w3.org/2003/05/soap-envelope"}
    S_Body Body;
};
