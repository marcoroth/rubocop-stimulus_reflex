# frozen_string_literal: true

module RuboCop
  module Cop
    module StimulusReflex
      class ReflexMethodNames < Base
        NOT_RECOMMENED_METHOD_NAMES = [:send].freeze

        def on_def(definition)
          name = definition.method_name

          return unless NOT_RECOMMENED_METHOD_NAMES.include?(name)

          add_offense(
            definition,
            message: "It's not recommended to use `#{name}` as a reflex method name."
          )
        end
      end
    end
  end
end
