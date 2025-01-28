require 'grpc'
require_relative '../app/models/concerns/payment_processor.rb'

def main
  server = GRPC::RpcServer.new
  server.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
  server.handle(PaymentService)
  puts "Payment Service is running on port 50051..."
  server.run_till_terminated
end

main

