# frozen_string_literal: true

require "test_helper"

module RuboCop
  class StimulusReflexTest < Minitest::Test
    def test_that_it_has_a_version_number
      refute_nil ::RuboCop::StimulusReflex::VERSION
    end
  end
end
