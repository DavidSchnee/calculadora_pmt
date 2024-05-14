def lambda_handler(payload:, context:)
  monthly_interest_rate = payload['interest_rate'] / 12.0 / 100.0
  numerator = payload['principal'] * monthly_interest_rate * (1 + monthly_interest_rate)**payload['periods']
  denominator = ((1 + monthly_interest_rate)**payload['periods']) - 1
  pmt = (numerator / denominator).round(2)
  puts "O pagamento mensal constante é de: #{pmt}"
end
