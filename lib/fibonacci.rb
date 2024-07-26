class Fibonacci
  def initialize
    @fib = [0, 1, 1]
    @prng = Random.new
  end

  def number(index)
    return @fib[index] if computed? index

    n = index / 2
    fib_n = computed?(n) ? @fib[n] : number(n)
    fib_n1 = computed?(n + 1) ? @fib[n + 1] : number(n + 1)

    new_fib = (fib_n**2) + (fib_n1**2) if index.odd?
    new_fib = fib_n * ((2 * fib_n1) - fib_n) if index.even?

    @fib[index] = new_fib
  end

  def _number(index)
    return @fib[index] if computed? index

    second = @fib.count - 1
    first = second - 1

    while second < index
      @fib[second + 1] = @fib[first] + @fib[second]
      first += 1
      second += 1
    end

    @fib[second]
  end

  def number_list(fib_nums)
    @lib[0, fib_nums]
  end

  def random(max_index)
    number @prng.rand max_index
  end

  def clear_fib_storage
    @fib = [0, 1, 1]
  end

  def computed?(index)
    index < @fib.count && !@fib[index].nil?
  end
end
