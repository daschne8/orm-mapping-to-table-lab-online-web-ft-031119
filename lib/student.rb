#  with DB[:conn]
class Student
  attr_accessor :name,:grade,:id

  def initialize(name,grade id = nil)
    @name,@grade,@id = name,grade,id
  end

  def save

  end

  def create

  end

  def self.create_table
    sql = <<-SQL
    CREATE TABEL IF NOT EXISTS songs (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def drop_table
    sql = <<-SQL
    DROP TABLE songs
    SQL
    DB[:conn].execute("DROP TABLE songs")
  end



end
