# http://www.codewars.com/kata/holiday-shopping-priority-queue/
class HolidayPriorityQueue
  def initialize
    @queue = {}
  end

  def addGift(gift)
    @queue.merge!({gift["priority"].to_s => gift["gift"]})
    @queue.size
  end

  def buyGift
    return "" if @queue.size < 1
    @queue.delete(@queue.keys.min)
  end
end
