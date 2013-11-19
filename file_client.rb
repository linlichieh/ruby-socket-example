require 'socket'

send_file = "/tmp/ruby_test/send/test.txt"
if !File.exist?(send_file)
  puts send_file + " file doesn't exist."
  exit
end
SIZE = 1024 * 1024 * 10

TCPSocket.open('localhost', 6000) do |socket|
  File.open(send_file, 'rb') do |file|
      while chunk = file.read(SIZE)
        socket.write(chunk)
      end
  end
end
