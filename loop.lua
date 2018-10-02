tmr.alarm(1,1000,1,function() 
conn=net.createConnection(net.TCP, false) 
conn:on("receive", function(conn, pl) print(pl) end)
conn:connect(80,"123.206.29.93")
conn:send("GET / HTTP/1.1\r\nHost: www.umview.com\r\n"
    .."Connection: keep-alive\r\nAccept: */*\r\n\r\n")
end)