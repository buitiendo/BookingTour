every :day, :at => '12pm' do
  runner "UserMailer.daily_mail"
end
