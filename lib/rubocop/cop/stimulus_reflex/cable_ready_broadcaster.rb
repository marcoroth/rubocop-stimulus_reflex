# frozen_string_literal: true

module RuboCop
  module Cop
    module StimulusReflex
      class CableReadyBroadcaster < Base
        MSG = "You don't need to include `CableReady::Broadcaster` inside your reflex. You can use the `cable_ready`" \
              " accessor without the need to include the module."

        def on_send(node)
          return unless node.method_name == :include

          broadcaster = node.arguments.find { |c| c.const_name == "CableReady::Broadcaster" }

          add_offense(broadcaster) if broadcaster
        end
      end
    end
  end
end
