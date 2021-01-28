module Web
  module Controllers
    module Home
      class Index
        include Web::Action

        expose :voices

        def call(params)
          @voices = VoiceRepository.new.all
        end
      end
    end
  end
end
