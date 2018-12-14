class SumaryMonthlyJob < ActiveJob::Base
  queue_as :default

    def perform(*args)
      Booking.where(is_admin: true).each do |admin|
        UserMailer.with(user: admin).monthly_sumary.deliver_now
    end
  end
end
