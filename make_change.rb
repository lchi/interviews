#!/usr/bin/env ruby

# For prompt see http://en.wikipedia.org/wiki/Change-making_problem
# This focuses on the dynamic programming solution - where the greedy
# may fail to give the correct result

amount = ARGV[0].to_i
denominations = ARGV[1..-1].map { |a| a.to_i }

def make_change(amount, denominations)
  # edge case - amount is 0
  return [] if amount == 0

  # setup
  m = {}
  combos = denominations.map { |d| [d] }
  next_combos = []

  loop do
    combos.each do |c|
      # get sum just once
      # return if found
      sum = c.reduce {|s,v| s + v}
      return c if sum == amount

      denominations.each do |d|
        # calculate next
        # return if next is correct
        new_sum = sum + d
        new_combo = Array.new(c).push d
        return new_combo if new_sum == amount

        # if sum not already found, then
        # memoize and keep this as a new combo
        if !m[sum]
          m[sum] = true
          next_combos.push new_combo
        end
      end
    end

    # swap for next iteration
    combos = next_combos
    next_combos = []
  end

end

puts make_change(amount, denominations).to_s
