# Codewars - Kata Solution (Ruby)
# SUDOKU SOLVER (3 kyu)

# Instructions
# Write a function that will solve a 9x9 Sudoku puzzle. The function will take one argument consisting of the 2D puzzle array, with the value 0 representing an unknown square.
# The Sudokus tested against your function will be "easy" (i.e. determinable; there will be no need to assume and test possibilities on unknowns) and can be solved with a brute-force approach.
# For Sudoku rules, see the Wikipedia article.
# puzzle = [[5,3,0,0,7,0,0,0,0],
#           [6,0,0,1,9,5,0,0,0],
#           [0,9,8,0,0,0,0,6,0],
#           [8,0,0,0,6,0,0,0,3],
#           [4,0,0,8,0,3,0,0,1],
#           [7,0,0,0,2,0,0,0,6],
#           [0,6,0,0,0,0,2,8,0],
#           [0,0,0,4,1,9,0,0,5],
#           [0,0,0,0,8,0,0,7,9]]

# sudoku(puzzle)
# # Should return
#  [[5,3,4,6,7,8,9,1,2],
#   [6,7,2,1,9,5,3,4,8],
#   [1,9,8,3,4,2,5,6,7],
#   [8,5,9,7,6,1,4,2,3],
#   [4,2,6,8,5,3,7,9,1],
#   [7,1,3,9,2,4,8,5,6],
#   [9,6,1,5,3,7,2,8,4],
#   [2,8,7,4,1,9,6,3,5],
#   [3,4,5,2,8,6,1,7,9]]

# Solution
class Sudoku
  attr_reader :nb_of_iterations
  attr_accessor :puzzle, :name

  def initialize(attributes = {})
    @puzzle = attributes[:puzzle].flatten || Array.new(81, 0)
    create_columns
    create_squares
    @hash = create_hash
    @filled_tiles = set_filled_tiles_indexes
    @empty_tiles = set_empty_tiles_index
    @name = "#{define_difficulty} Sudoku (filled tiles: #{@filled_tiles.size})"
  end

  def print
    puts "#{p_center(@name)}#{grid_is_valid? ? p_center('Grid Complete') : p_center('Grid Incomplete')}#{'='*77}"
    main_i = 0
    create_2D.each_with_index do |e, i|
      string_row = "||#{(('       |' * 2) + '       ||') * 3}"
      puts string_row
      row = "||"
      e.each_with_index do |x, i|
        if x != 0
          if @filled_tiles.include?(main_i)
            (i + 1) % 3 != 0 ? row << "   \e[92m\e[1m#{x}\e[0m   |" : row << "   \e[92m\e[1m#{x}\e[0m   ||"
          else
            (i + 1) % 3 != 0 ? row << "   #{x}   |" : row << "   #{x}   ||"
          end
        else
          (i + 1) % 3 != 0 ? row << "       |" : row << "       ||"
        end
        main_i += 1
      end
      puts row
      puts string_row
      puts ((i + 1) % 3 != 0) ? "#{'-'*77}" : "#{'='*77}"
    end
  end

  def solve
    tile_to_solve = 0
    # @nb_of_iterations = 0
    while @puzzle.include?(0)
      # @nb_of_iterations += 1
      if tile_to_solve <= -1
        raise Invalid, 'Grid not valid'
        return false
      end
      solve_tile(@empty_tiles[tile_to_solve]) ? tile_to_solve += 1 : tile_to_solve -= 1
    end
    grid_is_valid?
  end

  def solve_tile(i)
    if @hash[i][:editable]
      while @hash[i][:val] <= 9
        @hash[i][:val] += 1
        return false if tile_over_9_reset(i)
        unless create_2D[@hash[i][:row]].include?(@hash[i][:val]) || @columns[@hash[i][:col]].include?(@hash[i][:val]) || @squares[@hash[i][:squ]].include?(@hash[i][:val])
          set_tile_value(i)
          return true
        end
      end
    else
      false
    end
  end

  def set_tile_value(i)
    @puzzle[i] = @hash[i][:val]
    create_columns
    create_squares
  end

  def tile_over_9_reset(i)
    if @hash[i][:val] > 9
      @hash[i][:val] = 0
      set_tile_value(i)
      true
    else
      false
    end
  end

  private

  def grid_is_valid?
    (create_2D + @columns + @squares).map { |e| e.sort == (1..9).to_a }.include?(false) ? false : true
  end

  def create_columns
    @columns = create_2D.transpose
  end

  def create_squares
    squares = [[],[],[],[],[],[],[],[],[]]
    # 9.times { squares << [] }
    # squares = Array.new(9, [])
    i = 0
    create_2D.each_slice(3) do |trio|
      trio.each do |row|
        squares[i] << row[0..2]
        squares[i + 1] << row[3..5]
        squares[i + 2] << row[6..8]
      end
      i += 3
    end
    @squares = squares.map { |sq| sq.flatten }
  end

  def create_2D
    ary = []
    @puzzle.each_slice(9) { |s| ary << s }
    ary
  end

  def create_hash
    hash = {}
    squ_i = 0
    row_i = 0
    @puzzle.each_with_index do |number, i|
      hash[i] = {
        val: number,
        row: ((i+1).fdiv(9).ceil) - 1,
        col: i % 9,
        editable: number == 0
      }
      case i
      when 0..26
        case row_i
        when 0..2
          squ_i = 0
        when 3..5
          squ_i = 1
        when 6..8
          squ_i = 2
        end
      when 27..53
        case row_i
        when 0..2
          squ_i = 3
        when 3..5
          squ_i = 4
        when 6..8
          squ_i = 5
        end
      when 54..80
        case row_i
        when 0..2
          squ_i = 6
        when 3..5
          squ_i = 7
        when 6..8
          squ_i = 8
        end
      end
      hash[i][:squ] = squ_i
      row_i += 1
      if row_i == 9
        row_i = 0
      end
    end
    hash
  end

  def set_filled_tiles_indexes
    @puzzle.each_index.select { |i| @puzzle[i] != 0 }
  end

  def set_empty_tiles_index
    (0..81).to_a - @filled_tiles
  end

  def p_center(string)
    to_p = "#{'=' * ((77 / 2) - ((string.size + 2) / 2))} #{string} #{'=' * ((77 / 2) - ((string.size + 2) / 2))}"
    puts to_p.size == 77 ? to_p : (to_p + '=')
  end

  def define_difficulty
    nb = (@puzzle - [0]).size
    case nb
    when 0..16
      'Godlike'
    when 17..20
      'Atrocious'
    when 21..24
      'Insane'
    when 0..26
      'Very Hard'
    when 27..29
      'Hard'
    when 30..32
      'Medium'
    when 33..35
      'Easy'
    when 36..39
      'Very Easy'
    when 39..81
      'Extremely Easy'
    end
  end

end

class Invalid < StandardError
end


def sudoku(puzzle)
  s = Sudoku.new(puzzle: puzzle)
  s.solve
  ary = []
  s.puzzle.each_slice(9) { |s| ary << s }
  ary
end
