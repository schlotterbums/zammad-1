# Copyright (C) 2012-2021 Zammad Foundation, http://zammad-foundation.org/

class Sequencer
  class Unit
    module Import
      module Kayako
        class Request < Sequencer::Unit::Common::Provider::Attribute
          class Case < Sequencer::Unit::Import::Kayako::Request::Generic
            def params
              super.merge(
                include: 'user,case_priority,case_status,channel,tag,case_type',
                fields:  '+tags',
              )
            end
          end
        end
      end
    end
  end
end
