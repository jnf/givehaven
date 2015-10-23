Rails.configuration.stripe = {
  :publishable_key => 'pk_test_Msjk9b3HH1YxTRRiE7SSKWbu',
  :secret_key      => 'sk_test_d97V7Q0cwaVvcxHkIsfpYSTJ'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
