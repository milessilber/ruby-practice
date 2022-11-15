require 'minitest/autorun'
require_relative 'hash_as_index'

class HashAsIndexTest < Minitest::Test
  def test_intersection
    # skip
    array_1 = [8, 6, 4, 2, 0]
    array_2 = [1, 2, 3, 4, 5]
    assert_equal [2, 4], intersection(array_1, array_2).sort
  end

  def test_find_first_duplicate_with_duplicate
    skip
    array = [4, 2, 6, 8, 0, 3, 5, 7, 2, 9]
    assert_equal 2, find_first_duplicate(array)
  end

  def test_find_first_duplicate_without_duplicate
    skip
    array = [4, 2, 6, 8, 0, 3, 5, 7, 9]
    assert_nil find_first_duplicate(array) # the method should return nil in this case
  end

  def test_subset
    skip
    array_1 = [1, 2, 3, 4, 5, 6]
    array_2 = [6, 3, 2]
    assert subset(array_1, array_2) # the method should return true
  end

  def test_non_subset
    skip
    array_1 = [1, 2, 3, 4, 5, 6]
    array_2 = [6, 3, 7]
    assert_equal false, subset(array_1, array_2) # the method should return false
  end

  def test_two_sum
    skip
    array = [5, 2, 9, 3, 0, 4, 8]
    assert two_sum(array)
  end

  def test_no_two_sum
    skip
    array = [5, 2, 9, 3, 0, 4]
    assert_equal false, two_sum(array)
  end
end