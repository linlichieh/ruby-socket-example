require 'socket'

test_path = "/tmp/ruby_socket/"

socket = TCPSocket.open('localhost', 6000)
file = open(test_path + 'test.txt', "r")
fileContent = file.read
puts fileContent
socket.puts fileContent
#data = sock.read
#destFile.print data
#destFile.close
