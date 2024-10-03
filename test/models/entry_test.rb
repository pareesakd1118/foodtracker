require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "breakfast", calories: 1000, carbohydrates: 35, proteins: 10, fats: 10)
    assert entry.save
  end

  test "should not save entry without calories" do
    entry = Entry.new(meal_type: "breakfast", carbohydrates: 35, proteins: 10, fats: 10)
    assert_not entry.save
  end

  test "should not save entry without carbohydrates" do
    entry = Entry.new(meal_type: "breakfast", calories: 1000, proteins: 10, fats: 10)
    assert_not entry.save
  end

  test "should not save entry without proteins" do
    entry = Entry.new(meal_type: "breakfast", calories: 1000, carbohydrates: 35, fats: 10)
    assert_not entry.save
  end

  test "should not save entry without fats" do
    entry = Entry.new(meal_type: "breakfast", calories: 1000, carbohydrates: 35, proteins: 10)
    assert_not entry.save
  end

  test "should not save entry without meal_type" do
    entry = Entry.new(calories: 1000, carbohydrates: 35, proteins: 10, fats: 10)
    assert_not entry.save
  end

end
