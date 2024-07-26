require_relative 'lib/fibonacci'
require_relative 'lib/merge_sort'

# fibonacci
fib = Fibonacci.new
num_rows = 100
num_cols = 1_000

divide = Time.now
num_rows.times do |row|
  num_cols.times do |col|
    fib_num = fib.number((num_cols * row) + col)
    # fib_num = fib_num.to_s.rjust num_width
    # print fib_num
  end
  # puts
end
divide = Time.now - divide

linear = Time.now
num_rows.times do |row|
  num_cols.times do |col|
    fib_num = fib._number((num_cols * row) + col)
    # fib_num = fib_num.to_s.rjust num_width
    # print fib_num
  end
  # puts
end
linear = Time.now - linear

# merge_sort
sorting_size = 1_000_000
sorting_target = (0...sorting_size).to_a.shuffle!

stdsort = Time.now
sorting_target.sort
stdsort = Time.now - stdsort

impsort = Time.now
sorting_target.merge_sort
impsort = Time.now - impsort

# benchmark
puts "#{'divide:'.rjust 8} #{'%.12f' % divide}s"
puts "#{'linear:'.rjust 8} #{'%.12f' % linear}s"
puts "#{'stdsort:'.rjust 8} #{'%.12f' % stdsort}s"
puts "#{'impsort:'.rjust 8} #{'%.12f' % impsort}s"
