#!/usr/bin/env ruby

require_relative 'calculator'

csv = ARGV.first
requested_amount = ARGV.last

Calculator.new(csv,requested_amount)