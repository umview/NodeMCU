uart.on("data", 0,
  function(data)
    print("receive from uart:", data)
    conn=net.createConnection(net.TCP, false) 
conn:on("receive", function(conn, pl) print(pl) end)
conn:connect(80,"123.206.29.93")
conn:send("GET /?value="..data.." HTTP/1.1\r\nHost: test.umview.com\r\n"
    .."Connection: keep-alive\r\nAccept: */*\r\n\r\n")
end, 0)
