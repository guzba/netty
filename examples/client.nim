import netty

# create connection
var client = newReactor()
# connect to server
var c2s = client.connect("127.0.0.1", 1999)
# send message on the connection
client.send(c2s, "hi")
# main loop
while true:
  # must call tick to both read and write
  client.tick()
  # usually there are no new messages, but if there are
  for msg in client.messages:
    # print message data
    echo "GOT MESSAGE: ", msg.data
