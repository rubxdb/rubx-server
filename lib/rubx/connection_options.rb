module Rubx
  class ConnectionOptions
    attr_reader :db_name

    def initialize(db_name)
      @db_name = db_name
    end

    def uri
      'postgres://%s@%s/%s' %
        ['postgres', 'localhost', db_name]
    end
  end
end
