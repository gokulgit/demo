require 'test_helper'

class RecordsTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "The Perfect Page View Action" do
    record_new = Record.new({"userid"=>"testuserid", "pageid"=>110})
    assert record_new.save
  end

  test "The Wrong Viewing Action with no userid" do
    record_new = Record.new({"pageid"=>200})
    assert !record_new.save
  end

  test "The Wrong Viewing Action with no page id" do
    record_new = Record.new({"userid"=>"testuserid"})
    assert !record_new.save
  end

end
