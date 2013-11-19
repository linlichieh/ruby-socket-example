require 'socket'
require 'benchmark'

save_path = "/tmp/ruby_test/receive/"
if !File.directory?(save_path)
  puts save_path + " directory doesn't exist."
  exit
end
save_file = save_path + "tmp.txt"
SIZE = 1024 * 1024 * 10

server =  TCPServer.new('localhost', 6000)
puts "Server listening..."
client = server.accept
time = Benchmark.realtime do
  File.open(save_file, 'w') do |file|
    while chunk = client.read(SIZE)
      file.write(chunk)
    end
  end
end
