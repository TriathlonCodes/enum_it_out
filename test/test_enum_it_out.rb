# ### driver code ###
# test = [3,4,5,6]
# test_string = "name: Stephanie, age: 25"
# test_string_2 = "3 4 5 6 8"
# test.p_it_out
# p test.hash_it_out
# p test_string.arr_it
# p test_string.arr_it.hash_it_out
# p test_string.hash_it_out
# # p test_string_2.hash_it_out


# require 'test/unit'
require 'minitest/autorun'
require '../lib/enum_it_out'

class Enum_It_Out_Test < Minitest::Test
  def test_arr_it
    assert ["name:", "JimBob"], "name: JimBob".arr_it
  end

  def test_hash_it_out_with_string
    expected = {:name => "JimBob"}
    assert expected, "name: JimBob".hash_it_out
  end

  def test_hash_it_out_with_array
    expected = {:name => "JimBob"}
    assert expected, ["name", "JimBob"].hash_it_out
  end
end
