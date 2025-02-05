# Copyright (C) 2012-2021 Zammad Foundation, http://zammad-foundation.org/

class Sequencer
  class Sequence
    module Import
      module Kayako
        class User < Sequencer::Sequence::Base

          def self.sequence
            [
              'Import::Kayako::User::Identifier',
              'Import::Kayako::User::Login',
              'Import::Kayako::User::Initiator',
              'Import::Kayako::User::Password',
              'Import::Kayako::User::Roles',
              'Import::Kayako::User::GroupIds',
              'Import::Kayako::User::OrganizationId',
              'Common::ModelClass::User',
              'Import::Kayako::User::Mapping',
              'Import::Kayako::Mapping::Timestamps',
              'Import::Kayako::Mapping::CustomFields',
              'Import::Common::Model::Attributes::AddByIds',
              'Import::Common::Model::FindBy::UserAttributes',
              'Import::Common::Model::Update',
              'Import::Common::Model::Create',
              'Import::Common::Model::Save',
              'Import::Kayako::MapId',
              'Import::Common::Model::Statistics::Diff::ModelKey',
              'Import::Common::ImportJob::Statistics::Update',
              'Import::Common::ImportJob::Statistics::Store',
            ]
          end
        end
      end
    end
  end
end
