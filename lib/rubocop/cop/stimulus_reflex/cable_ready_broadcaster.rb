# frozen_string_literal: true

module RuboCop
  module Cop
    module StimulusReflex
      class CableReadyBroadcaster < Base
        MSG = "You don't need to include `CableReady::Broadcaster` inside your reflex. You can use the `cable_ready`" \
              " accessor without the need to include the module."

        def_node_search :cable_ready_broadcaster?, <<~PATTERN
          (const (const nil? :CableReady) :Broadcaster)
        PATTERN

        def_node_search :reflex_base_class?, <<~PATTERN
          (const (const nil? :StimulusReflex) :Reflex)
        PATTERN

        def on_send(node)
          return unless node.method_name == :include

          return unless node.ancestors.any? do |ancestor|
                          cable_ready_broadcaster?(ancestor) && reflex_base_class?(ancestor)
                        end

          add_offense(node)
        end
      end
    end
  end
end
