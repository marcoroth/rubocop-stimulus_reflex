# frozen_string_literal: true

require "spec_helper"

RSpec.describe RuboCop::Cop::StimulusReflex::CableReadyBroadcaster, :config do
  it "registers an offense for a controller mixing in Broadcaster into a reflex" do
    expect_offense(<<~RUBY)
      class FooReflex < StimulusReflex::Reflex
        include CableReady::Broadcaster
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ You don't need to include `CableReady::Broadcaster` inside your reflex. You can use the `cable_ready` accessor without the need to include the module.
      end
    RUBY
  end

  it "registers an offense for an indirect subclass of StimulusReflex::Reflex" do
    expect_offense(<<~RUBY)
      class ApplicationReflex < StimulusReflex::Reflex
      end
      class BarReflex < ApplicationReflex
        include CableReady::Broadcaster
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ You don't need to include `CableReady::Broadcaster` inside your reflex. You can use the `cable_ready` accessor without the need to include the module.
      end
    RUBY
  end

  it "doesn't register an offense for a model mixing in Broadcaster" do
    expect_no_offenses(<<~RUBY)
      class Foo < ActiveRecord::Base
        include CableReady::Broadcaster
      end
    RUBY
  end

  it "doesn't register an offense for a job mixing in Broadcaster" do
    expect_no_offenses(<<~RUBY)
      class Foo < ActiveJob::Base
        include CableReady::Broadcaster
      end
    RUBY
  end
end
