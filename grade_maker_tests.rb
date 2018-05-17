require 'minitest/autorun'
require_relative 'grade_maker.rb'

class Grade_Maker_test < Minitest::Test
	def test_true_is_true
		assert_equal(true,true)
	end

	def test_grade_maker_class
		assert_equal(Array,grademaker().class)
	end
end