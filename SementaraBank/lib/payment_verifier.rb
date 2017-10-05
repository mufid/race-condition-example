module PaymentVerifier
  class << self
    def verify_top_up(*args)
      # Simulate external slow payment validation to third party API
      sleep(Random.rand * 3.0)
      args.last.to_i
    end
  end
end
