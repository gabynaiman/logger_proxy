class LoggerProxy

  LEVELS = [:debug, :info, :warn, :error, :fatal].freeze

  def initialize(logger, context)
    @logger = logger
    @context = context
  end

  LEVELS.each do |level|
    define_method level do |message|
      @logger.send level, "[#{@context}] #{message}"
    end
  end
end