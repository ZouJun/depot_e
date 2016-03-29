class Notifier < ApplicationMailer
  default :from => 'Sam Ruby <depot@example.com>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received ( order )
    # @greeting = "Hi"
    @order = order

    mail :to => order.email, :subject =>  "Order Confirmation"
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
