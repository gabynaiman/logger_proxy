class LoggerProxy

  LEVELS = [:debug, :info, :warn, :error, :fatal].freeze

  def initialize(context, logger)
    @context = context
    @logger = logger
  end

  LEVELS.each do |level|
    define_method level do |message|
      @logger.send level, "[#{@context}] #{message}"
    end
  end
end