
% Enter your own specs...
system = struct('type', 'mysql','url',url,'user',username,'pwd',password)
url = sprintf('jdbc:mysql://%s:3306/bancroft_trends', system.url);
% conn = database('sampledatabase','username','password')
conn = database('bancroft_trends',system.user,system.pwd,'com.mysql.jdbc.Driver',url);
if (~isconnection(conn))
str=conn.Message
h=errordlg(str,'Error','modal' );
while ishandle(h)
pause(.25)
end
error(str)
end