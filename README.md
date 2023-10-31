# HCP Vault Secrets Demo Application 
HCP Vault Secrets is a centralized SaaS secrets lifecycle management solution. This repository showcases the various ways you can store and fetch secrets securely with your  application. 

We will use Stripe Checkout's sample application to showcase it! 

Stripe Checkout is the fastest way to get started with payments. Included are some basic build and run scripts you can use to start up the application.

## Running the sample with static secrets locally

1. Set the stripe.Key in server.go to your test Stripe Secret Key. 

2. Run the server

~~~
go run server.go
~~~

3. Go to [http://localhost:4242/checkout.html](http://localhost:4242/checkout.html)

## Pre-Requisites
1. Ensure you have created an account with Stripe
2. You will need to create a sample product & price in the Stripe Dashboard - https://support.stripe.com/questions/how-to-create-products-and-prices 

## Running the sample with vlt with static secrets in HCP Vault Secrets

1. Sign up for HCP at cloud.hashicorp.com

2. Create an app "payments-api" in HCP Vault Secrets

3. Create a secret "STRIPE_SECRET_TEST_KEY" with the test Stripe Secret Key.

4. Ensure stripe.Key is set to an environment variable name "STRIPE_SECRET_TEST_KEY" in server.go

5. Download and install [vlt CLI](https://developer.hashicorp.com/vault/tutorials/hcp-vault-secrets-get-started/hcp-vault-secrets-install-cli)

6. Run the below commands to login to HCP and set the context to your app in HCP Vault Secrets

~~~
vlt login && vlt config
~~~

7. Use the below command to run the Go app with fetching secrets from HCP Vault Secrets

~~~
vlt run -c "go run server.go"
~~~

8. Go to [http://localhost:4242/checkout.html](http://localhost:4242/checkout.html)
