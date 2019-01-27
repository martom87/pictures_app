Rails.configuration.stripe = {

    :publishable_key => Rails.application.credentials.dig(:stripe, :stripe_test_publishable_key),

    :secret_key => Rails.application.credentials.dig(:stripe, :stripe_test_secret_key)

}

Stripe.api_key = Rails.configuration.stripe[:secret_key]







