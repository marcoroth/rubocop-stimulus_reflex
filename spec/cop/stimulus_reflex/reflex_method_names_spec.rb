# frozen_string_literal: true

require "spec_helper"

RSpec.describe RuboCop::Cop::StimulusReflex::ReflexMethodNames, :config do
  it "registers an offense for an offending method name" do
    expect_offense(<<~RUBY)
      class FooReflex < StimulusReflex::Reflex
        def send
        ^^^^^^^^ It's not recommended to use `send` as a reflex method name.
        end

        def save
        end
      end
    RUBY
  end
end
