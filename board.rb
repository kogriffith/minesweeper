require_relative "tile"


class Board


    def self.empty_grid
        Array.new(9) do
            Array.new(9) { Tile.new(0) }
        end
    end


    def initialize(grid = self.empty_grid)

        @grid = grid

    end

    def [](pos)
        x, y = pos
        grid[x][y]
    end

    def []=(pos, value)
        x, y = pos
        tile = grid[x][y]
        tile.value = value
    end


    def render
        puts "  #{(0..8).to_a.join(" ")}"
        grid.each_with_index do |row, i|
            puts "#{i} #{row.join(" ")}"
        end
    end










end