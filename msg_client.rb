require 'socket'

TCPSocket.open('localhost', 6000) do |socket|

  socket.puts "Hello! I'm client."

  while message = socket.gets
    puts message.chomp
  end
end
