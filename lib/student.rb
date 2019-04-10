#  with DB[:conn]
class Student
  attr_accessor :name,:grade,:id

  def initialize(name,grade, id = nil)
    @name,@grade,@id = name,grade,id
  end

  def save
    sql = <<-SQL
    INSERT INTO students(name,grade)
    VALUES (?,?)
    SQL
    DB[:conn].execute(sql,self.name,self.grade)
  end

  def create

  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def drop_table
    sql = "DROP TABLE songs"
    DB[:conn].execute(sql)
  end



end
