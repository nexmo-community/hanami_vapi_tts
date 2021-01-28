require 'vonage'

module Web
  module Controllers
    module Home
      class Create
        include Web::Action

        def call(params)
          client = Vonage::Client.new(application_id: ENV['VONAGE_APPLICATION_ID'], private_key: ENV['VONAGE_PRIVATE_KEY'])

          response = client.voice.create(
            to: [{
              type: 'phone',
              number: params[:number]
            }],
            from: {
              type: 'phone',
              number: ENV['VONAGE_NUMBER']
            },
            ncco: [{
              action: 'talk',
              text: params[:message],
              language: params[:language]
            }]
          )

          redirect_to '/success'
        end
      end
    end
  end
end
