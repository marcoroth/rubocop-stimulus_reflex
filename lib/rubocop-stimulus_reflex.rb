# frozen_string_literal: true

require "pathname"
require "yaml"

require "rubocop"

require_relative "rubocop/stimulus_reflex/version"
require_relative "rubocop/stimulus_reflex/inject"

require_relative "rubocop/cop/stimulus_reflex/reflex_method_names"

RuboCop::StimulusReflex::Inject.defaults!

require_relative "rubocop/cop/stimulus_reflex_cops"
