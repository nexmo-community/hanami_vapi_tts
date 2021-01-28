# Vonage Voice API TTS on Hanami

Create text-to-speech phone calls with the Vonage Voice API and the Vonage Ruby SDK on Hanami.

## Prerequisites

This project requires the following:

* Ruby
* Hanami
* A Vonage Account
* A Vonage Phone Number

## Installation

To install the application:

* Clone this repository locally
* Run `bundle install` to install the dependencies
* Run `bundle exec hanami db prepare` to set up the database
* Run `bundle exec rake db:seed` to seed the database with language options

## Usage

To run the telephone game do the following:

* Rename `.env.sample` to `.env` and insert your Vonage API credentials, along with your Vonage phone number
* Download your `private.key` for your Vonage Voice application from the [Vonage API Dashboard](https://dashboard.nexmo.com)
* Start your Hanami server by running `bundle exec hanami server` from the command line
* Visit your website at `http://localhost:200` and fill out the form to create your first tex-to-speech phone call

## License

This project is under the [MIT License](LICENSE).