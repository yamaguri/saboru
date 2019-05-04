class Saboru
  include ActiveModel::Model

  def self.check(target_date)
    target = target_date.strftime('%Y%m%d').to_s.to_i
    result = false

    result ||= prime(target)
    result
  end

  def self.prime(target)
    return false if target.even?

    3.step(Math.sqrt(target) + 1, 2) do |i|
      return false if (target % i).zero?
    end

    true
  end
end
