#!/usr/bin/ruby

# class Category
#   def initialize(name)
#     @name = name
#     @id = id || 0
#   end

# end

class Expense
  attr_accessor :date, :amt, :category, :desc
  def initialize(date, amt, category, desc = "")
    @date = date
    @amt = amt
    @category = category
    @desc = desc
  end

  def date
    @date
  end

  def amt
    @amt
  end

  def category
    @category
  end

  def desc
    @desc
  end

  def to_csv
    row = [date, amt, category, desc].join(",")
  end
end

def writeRow(row = "")

  File.open('test.csv', 'w') { |csvFile| 
    csvFile.puts(row.to_csv)
  }

  # IO.foreach("testfile") {|line| print "GOT ", line }
end

exp1 = Expense.new("20160515", "25.50", "fish", "description")
writeRow(exp1)

