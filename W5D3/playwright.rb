require 'sqlite3'
require 'singleton'

class PlayDBConnection < SQLite3::Database
  include Singleton

  def initialize
    super('plays.db')
    self.type_translation = true
    self.results_as_hash = true
  end
end

class Playwright

    def self.all
        data = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
        data.map {|datum| Playwright.new(datum)}
    end

    def self.find_by_name(name)
        playwright = PlayDBConnection.instance.execute(<<-SQL, name)
            SELECT
                *
            FROM
                playwrights
            WHERE 
                name = ?
        SQL
    end

    def initialize(options)
        @id = options['id']
        @name = options['name']
        @birth_year = options['birth_year']
    end

    def create
    end

    def update
    end

    def get_plays
    end
end