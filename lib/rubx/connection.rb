module Rubx
  class Connection
    attr_reader :options

    def initialize(*args)
      @options = Rubx::ConnectionOptions.new(*args)
    end

    def db
      @db ||= Sequel.connect(options.uri)
    end

    def tables
      db.tables
    end
  end
end
