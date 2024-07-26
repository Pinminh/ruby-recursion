class Array
  def merge_sort
    return self if self.count <= 1

    mid_index = (self.count - 1) / 2
    left_sorted = self[0..mid_index].merge_sort
    right_sorted = self[(mid_index + 1)..].merge_sort

    left_sorted.merge right_sorted
  end

  def merge(other)
    returned = []
    self_index = 0
    other_index = 0

    while self_index < self.count || other_index < other.count
      if self_index >= self.count
        returned << other[other_index]
        other_index += 1
      elsif other_index >= other.count
        returned << self[self_index]
        self_index += 1
      elsif self[self_index] < other[other_index]
        returned << self[self_index]
        self_index += 1
      else
        returned << other[other_index]
        other_index += 1
      end
    end

    returned
  end
end
