class EventListener
  include Sneakers::Worker
  from_queue ENV['TASKS_QUEUE']

  def work(raw_event)
    event = JSON.parse raw_event, symbolize_names: true
    logger.info "Processing: #{event}"
    klass = "#{event[:type].camelize}Handler"
    ActiveRecord::Base.connection_pool.with_connection do
      klass.constantize.perform event
    end if handler_defined? klass
  ensure
    ack!
  end

  private

  def handler_defined?(name)
    name.constantize rescue false
  end
end
