module SSO
  # One thing tha bugs me is when I cannot see which part of the code caused a log message.
  # This mixin will include the current class name as Logger `progname` so you can show that it in your logfiles.
  #
  module Logging

    def debug(&block)
      logger && logger.debug(progname, &block)
    end

    def info(&block)
      logger && logger.info(progname, &block)
    end

    def warn(&block)
      logger && logger.warn(progname, &block)
    end

    def error(&block)
      logger && logger.error(progname, &block)
    end

    def fatal(&block)
      logger && logger.fatal(progname, &block)
    end

    def progname
      self.class.name
    end

    def logger
      ::SSO.config.logger
    end

  end
end
