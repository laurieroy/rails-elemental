require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
	def setup
		@vehicle = Vehicle.new(name: "Tangy", tank_size: 15.9)
	end

	test "vehicle should be valid" do
		assert @vehicle.valid?
	end

	# test "should not save vechicle without a name" do
	# 	@vehicle = Vehicle.new
	# 	assert_not @vehicle.save
	# end

	test "name should be present" do
		@vehicle.name = " "
		assert_not @vehicle.valid?
	end

	test "name should be unique" do
		@vehicle.save
		@vehicle2 = Vehicle.new(name: "Tangy")
		assert_not @vehicle2.valid?
	end

	test "name should not be too long" do
		@vehicle.name = "a" * 26
		assert_not @vehicle.valid?
	end

	test "name should not be too short" do
		@vehicle.name = "a" * 2
		assert_not @vehicle.valid?
	end

	test "tank_size should be present" do
		@vehicle.tank_size = nil
		assert_not @vehicle.valid?
	end

	test "tank_size should not be zero" do
		@vehicle.tank_size = 0
		assert_not @vehicle.valid?
	end

	test "tank_size should not be too large" do
		@vehicle.tank_size = 100
		assert_not @vehicle.valid?
	end

	test "odometer should be present" do
		@vehicle.odometer = nil
		assert_not @vehicle.valid?
	end

	test "odometer should be a number" do
		@vehicle.odometer = nil
		assert_not @vehicle.valid?
	end

	test "odometer should be greater than 0"
		@vehicle.odometer >= 0
		assert @vehicle.valid?
	end

	test "odometer should be less than 7 digits" do
		@vehicle.odometer = 1_000_000
		assert_not @vehicle.valid?
	end

	# test "year should be a number" do

	# end

	# test "year should be a four digit number" do

	# end

	# test "year should not exceed the current year + 1" do

	# end

