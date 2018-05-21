require 'minitest/autorun'
require_relative 'grade_maker.rb'

class Grade_Maker_test < Minitest::Test
	def test_true_is_true
		assert_equal(true,true)
	end

	def test_conversion_gabby
		name = "Gabrielle"
		grade = 87
		assert_equal({"Gabrielle" => '90'},grade_maker(name,grade))
	end

	def test_conversion_student_gail
		name = "Gail"
		grade = 98
		assert_equal({"Gail" => '100'},grade_maker(name,grade))
	end

	def test_conversion_student_anna
		name = "Anna"
		grade = 56
		assert_equal({"Anna" => '60'},grade_maker(name,grade))
	end

	def test_grade_hash_87_36
		list = {"Gail"=>87, "Gabrielle"=>32}
		assert_equal([{"Gail"=>'90'},{"Gabrielle"=>'32'}],grade_book(list))
	end

	def test_gradebook_list_87_36
        list = {"Gail" => 87, "Sam" => 36}
        assert_equal([{"Gail" => "90"}, {"Sam" => "36"}],grade_book(list))
    end

	def test_gradebook_list_68_77
        list = {"Ron" => 68, "Jimmy" => 77}
        assert_equal([{"Ron" => "70"}, {"Jimmy" => "80"}],grade_book(list))
    end

   	def test_gradebook_list_23_99
        list = {"Ron" => 23, "Jimmy" => 99}
        assert_equal([{"Ron" => "23"}, {"Jimmy" => "100"}],grade_book(list))
    end

    def test_gradebook_list_89_65
        list = {"Ron" => 89, "Jimmy" => 65}
        assert_equal([{"Ron" => "90"}, {"Jimmy" => "65"}],grade_book(list))
    end

    def test_gradebook_list_89_65
        list = {"Ron" => 89, "Jimmy" => 65}
        assert_equal([{"Ron" => "90"}, {"Jimmy" => "65"}],grade_book(list))
    end
end