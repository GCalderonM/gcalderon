# frozen_string_literal: true

class ModalComponent < ViewComponent::Base
  include Turbo::FramesHelper

  attr_accessor :title

  def initialize(title:)
    @title = title
  end

end
