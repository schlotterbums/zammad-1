# Copyright (C) 2012-2021 Zammad Foundation, http://zammad-foundation.org/

class CoreWorkflow::Condition::ChangedTo < CoreWorkflow::Condition::Backend
  def match
    return if !CoreWorkflow::Condition::HasChanged.new(condition_object: @condition_object, key: @key, condition: @condition, value: @value).match

    CoreWorkflow::Condition::Is.new(condition_object: @condition_object, key: @key, condition: @condition, value: @value).match
  end
end
