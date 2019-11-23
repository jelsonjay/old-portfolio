<%
Set cnn1 = Server.CreateObject("ADODB.Connection")
cnn1.open "Driver={SQL Server}; Server=198.71.226.2; Database=entelope_; UID=monique; Password=Nbn120705"
Response.Write "ADO Version: " & cnn1.Version 
Response.Write "<BR>" & vbCrLf
Response.Write strVersionInfo & "DBMS Name: " & cnn1.Properties("DBMS Name") 
Response.Write "<BR>" & vbCrLf 
Response.Write "DBMS Version: " & cnn1.Properties("DBMS Version")
Response.Write "<BR>" & vbCrLf 
Response.Write "OLE DB Version: " & cnn1.Properties("OLE DB Version")
Response.Write "<BR>" & vbCrLf 
Response.Write "Provider Name: " & cnn1.Properties("Provider Name")
Response.Write "<BR>" & vbCrLf 
Response.Write "Provider Version: " & cnn1.Properties("Provider Version")
Response.Write "<BR>" & vbCrLf 
Response.Write "Provider Friendly Name: " & cnn1.Properties("Provider Friendly Name")
If 0 = InStr(LCase(cnn1.Properties("Provider Name")),"oledb") Then
' ### no OLE DB Provider used, therefore :
Response.Write "Driver Name: " & cnn1.Properties("Driver Name")
Response.Write "<BR>" & vbCrLf 
Response.Write "Driver Version: " & cnn1.Properties("Driver Version")
Response.Write "<BR>" & vbCrLf 
Response.Write "Driver ODBC Version: " & cnn1.Properties("Driver ODBC Version")
Response.Write "<BR><BR>"
End If
set cnn1 = nothing
%>
