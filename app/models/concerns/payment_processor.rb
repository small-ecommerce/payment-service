require "apis/payment_services_pb"
require "securerandom"

class PaymentService < Payment::PaymentService::Service
  def process_payment(request, _unused_call)
    if request.amount > 0
      Payment::PaymentResponse.new(
        transaction_id: SecureRandom.uuid,
        status: "successful",
        message: "Payment processed successfully"
      )
    else
      Payment::PaymentResponse.new(
        transaction_id: nil,
        status: "failed",
        message: "Invalid payment amount"
      )
    end
  end
end
