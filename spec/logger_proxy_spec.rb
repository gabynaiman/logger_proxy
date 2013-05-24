require 'minitest_helper'

describe LoggerProxy do

  LoggerProxy::LEVELS.each do |level|
    it level do
      fake = FakeLogger.new
      logger = LoggerProxy.new 'TEST', fake
      logger.send level, 'sample message'
      
      fake.last_message.must_equal '[TEST] sample message'
    end
  end  
  
end