class ApplicationHandler
  attr_reader :event

  def self.perform(event)
    new(event).perform
  end

  def initialize(event)
    @event = event
  end
end
