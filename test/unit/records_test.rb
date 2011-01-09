require 'test_helper'

class RecordsTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "The Perfect Recording Action" do
    record_new = Record.new({"userid"=>"testuserid", "pageid"=>110})
    assert record_new.save
  end

  test "The Wrong Recording Action with no userid" do
    record_new = Record.new({"pageid"=>121})
    assert !record_new.save
  end

  test "The Wrong Recording Action with no resourceid" do
    record_new = Record.new({"userid"=>"testuserid"})
    assert !record_new.save
  end

end
