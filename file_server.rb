#server sends client file over socket
require 'socket'

server = TCPServer.open('localhost', 6000)

# Send file


loop do 
#    Thread.start(server.accept) do |client|
#    file = open('/Users/apple/projects/ruby/socket/ruby-socket-file-transfer/receive/xx.php', "rb")
#    fileContent = file.read
#    client.puts(fileContent)
#    client.close
    client = server.accept
    msg = client.gets
    puts msg
    client.close
end

# Send message
# loop do
#   client = server.accept
#   msg = client.gets
#   puts "Connection is established ..."
#   puts "Server received a message from client : #{msg}"
#   client.puts "Server got your message, over!"
#   client.close
#   puts "Connection closed !"
# end
