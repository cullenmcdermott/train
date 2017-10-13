# encoding: utf-8
#
# Author:: Jared Quick

module Train
  class Platform
    include Train::Platforms::Common
    attr_accessor :name, :condition, :families

    def initialize(name, condition = {})
      @condition = condition
      @name = name
      @families = {}

      # add itself to the platform list
      Train::Platforms.list[name] = self
    end

    def title(title = nil)
      if @title.nil? && title.nil?
        name.capitalize
      elsif title.nil?
        @title
      else
        @title = title
        self
      end
    end
  end
end