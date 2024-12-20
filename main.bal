import ballerina/io;
import ballerina/data.xmldata;

xml input = xml `<s:Envelope xmlns:s="http://www.w3.org/2003/05/soap-envelope" xmlns:a="http://www.w3.org/2005/08/addressing">
   <s:Header>
      <a:Action s:mustUnderstand="1">http://htng.org/PWSWG/2010/12/DescriptiveContent_SubmitResponse</a:Action>
      <h:TimeStamp xmlns:h="http://htng.org/1.3/Header/" xmlns="http://htng.org/1.3/Header/">2024-07-04T15:37:45.3605563Z</h:TimeStamp>
      <a:RelatesTo>999999001</a:RelatesTo>
      <a:MessageID>5d7c1d79-a8dc-4185-a49e-834375ae3c3e</a:MessageID>
   </s:Header>
   <s:Body xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
      <OTA_HotelDescriptiveContentNotifRS xmlns="http://www.opentravel.org/OTA/2003/05">
         <Errors>
            <Error ShortText="Invalid Username/Password"/>
         </Errors>
      </OTA_HotelDescriptiveContentNotifRS>
   </s:Body>
</s:Envelope>`;

public function main() returns error? {
    S_Envelope envelope = check xmldata:parseAsType(input);
    io:println(envelope);
}
