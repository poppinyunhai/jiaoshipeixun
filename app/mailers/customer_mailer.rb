class CustomerMailer < ActionMailer::Base
  default from: "support@knewtoefl.com"

  def remind(customer)
    @customer = customer
    mail(
      :to => 'yuecici@gmail.com',
      :subject => 'A new customer from knewtoefl.com'
    )
  end

end
