require 'socket'

server = TCPServer.open('localhost', 6000)

loop do
  client = server.accept
  msg = client.gets
  puts "Connection is established ..."
  puts "Server received a message from client : #{msg}"
  client.puts "Server has got your message, over!"
  client.close
  puts "Connection closed !"
end
