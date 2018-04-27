require_relative('../db/sql_runner')

class Film

attr_reader :id
attr_accessor :title, :price

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @price = options['price']
  end

  def save()
    sql = "INSERT INTO films
    (title,
     price
    )
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@title, @price]
    film = SqlRunner.run( sql, values ).first
    @id = film['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM films"
    film_details = SqlRunner.run(sql)
    return Film.map_items(film_details)
  end

  def self.map_items(film_details)
    result = film_details.map { |film| Film.new(film) }
    return result
  end

end
