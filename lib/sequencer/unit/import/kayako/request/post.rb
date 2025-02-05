# Copyright (C) 2012-2021 Zammad Foundation, http://zammad-foundation.org/

class Sequencer
  class Unit
    module Import
      module Kayako
        class Request < Sequencer::Unit::Common::Provider::Attribute
          class Post < Sequencer::Unit::Import::Kayako::Request::Generic
            attr_reader :ticket

            def initialize(...)
              super
              @ticket = request_params.delete(:ticket)
            end

            def api_path
              "cases/#{ticket['id']}/posts"
            end

            def params
              super.merge(
                include: 'mailbox,message_recipient,channel,attachment,case_message,note,chat_message,identity_email,identity_twitter,identity_facebook,facebook_message,facebook_post,facebook_post_comment,twitter_message,twitter_tweet',
              )
            end
          end
        end
      end
    end
  end
end
