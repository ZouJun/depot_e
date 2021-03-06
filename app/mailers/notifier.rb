class Notifier < ApplicationMailer
  default :from => '15223719447@163.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received(order)
    @greeting = "Hi"
    @order = order

    mail :to => order.email, :subject =>  "京东下单确认"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped ( order )
    # @greeting = "Hi"
    @order = order
    mail :to => order.email, :subject => 'Order Shipped'
  end
end
