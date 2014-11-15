class CustomersController < ApplicationController
  before_action :authenticate_customer!
  def show
    @customer = current_customer

    # @subscription = @customer.subscription
#     @subscription = Subscription.create(customer: @customer) unless @subscription
#     if @subscription
#       @preferences = @subscription.preferences
#       @lunches = @subscription.lunch
#       @dinners = @subscription.dinner
#       @extra_notes = @subscription.extra_notes
#       @lunch_time = @subscription.lunch_time ? @subscription.lunch_time.strftime('%H:%M') : 'time unset'
#       @dinner_time = @subscription.dinner_time ? @subscription.dinner_time.strftime('%H:%M') : 'time unset'
#     end
    @subscribe = @customer.subscribe
    @subscribe = Subscribe.create(customer: @customer) unless @subscribe
    if @subscribe
      @preferences = @subscribe.preference #preferences
      @lunches = @subscribe.lunch_day
      @dinners = @subscribe.dinner_day
      @extra_note = @subscribe.extra_note
      @lunch_time = @subscribe.lunch_time ? @subscribe.lunch_time.strftime('%H:%M') : 'time unset'
      @dinner_time = @subscribe.dinner_time ? @subscribe.dinner_time.strftime('%H:%M') : 'time unset'
    end
    
    @address = @customer.address
    @address = Address.create(customer: @customer) unless @address
    @phone = @address.phone


  end
end
