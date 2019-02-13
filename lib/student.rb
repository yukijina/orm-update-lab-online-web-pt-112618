require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade 
  attr_reader :id
  
  def initialize(id=nil, name, grade)
    @id = id 
    @name =  name 
    @grade = grade
  end
  
  def self.create_table
    sql = <<-SQL 
      CREATE TABEL IF NOT EXISTS students (
        ID INTEGER PRIMARY KEY,
        NAME TEXT,
        GRADE TEXT
        )
    SQL
    DB[:conn].execute(sql)
  end 


end
