# frozen_string_literal: true

class NavigationComponent < ViewComponent::Base
  def initialize(links:)
    @links = links
  end

  attr_reader :links
end
