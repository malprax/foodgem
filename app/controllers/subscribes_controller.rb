class SubscribesController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_subscribe, only: [:show, :update, :edit, :destroy]
  before_action :load_wizard, only: [:new, :edit, :create, :update]
  # GET /subscribes
  # GET /subscribes.json
  def index
    @subscribes = Subscribe.all
  end

  # GET /subscribes/1
  # GET /subscribes/1.json
  def show
  end

  # GET /subscribes/new
  def new
    # @subscribe = Subscribe.new
      @subscribe = @wizard.object
  end

  # GET /subscribes/1/edit
  def edit
    @subscribe = current_customer.subscribe
    @lunches = @subscribe.lunch_day
    @lunches = [] unless @lunches
    @dinners = @subscribe.dinner_day
    @dinners = [] unless @dinners
    # @tracks = Track.all
    # @preferences = Preference.where(subscription: @subscription)
    # @days = DAYS
  end

  # POST /subscribes
  # POST /subscribes.json
  def create
    subscribe = Subscribe.find(params[:id])
    redirect_to root_url if subscribe.customer != current_customer

    subscribe.lunch = params[:lunch_day]
    subscribe.dinner = params[:dinner_day]
    notes = params[:subscribe][:extra_note]
    # lunch_time = params[:subscribe][:lunch_time]
    # subscription.lunch_time = lunch_time
    # subscription.extra_notes = notes
    subscribe.save

    subscribe.update(subscribe_params)
    
    @pref_track_names = params[:preferences] ? params[:preferences] : []
    @old_preferences = Preference.where(subscribe: subscribe)
    @deleted_preferences = Preference.none

    @olds_after_delete = @old_preferences.reject{|old| @pref_track_names.include?(old.track.name) == false}
    @old_preferences.each do |oldie|
      unless @pref_track_names.include?(oldie.track.name)
        oldie.destroy
      end


    end

    @pref_track_names.each do |name|    
      track = Track.find_by_name(name)
      Preference.create(subscribe: subscribe, track: track) unless @old_preferences.where(track: track).any?
    end
    redirect_to root_url
    # @subscribe = Subscribe.new(subscribe_params)
    @subscribe = @wizard.object
    if @wizard.save
      redirect_to @subscribe, notice: "Product Saved"
    else
      render :new
    end

    # respond_to do |format|
#       if @subscribe.save
#         format.html { redirect_to @subscribe, notice: 'Subscribe was successfully created.' }
#         format.json { render :show, status: :created, location: @subscribe }
#       else
#         format.html { render :new }
#         format.json { render json: @subscribe.errors, status: :unprocessable_entity }
#       end
#     end
  end

  # PATCH/PUT /subscribes/1
  # PATCH/PUT /subscribes/1.json
  def update
    if @wizard.save
      redirect_to @subscribe, notice: 'Subscribe was updated.'
    else
      render action: 'edit'
    end
    # respond_to do |format|
#       if @subscribe.update(subscribe_params)
#         format.html { redirect_to @subscribe, notice: 'Subscribe was successfully updated.' }
#         format.json { render :show, status: :ok, location: @subscribe }
#       else
#         format.html { render :edit }
#         format.json { render json: @subscribe.errors, status: :unprocessable_entity }
#       end
#     end
  end

  # DELETE /subscribes/1
  # DELETE /subscribes/1.json
  def destroy
    @subscribe.destroy
    respond_to do |format|
      format.html { redirect_to subscribes_url, notice: 'Subscribe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
   
    def set_subscribe
      @subscribe = Subscribe.find(params[:id])
    end
    
    #wizard
    def load_wizard
      @wizard = ModelWizard.new(@subscribe || Subscribe, session, params)
          if self.action_name.in? %w[new edit]
            @wizard.start
          elsif self.action_name.in? %w[create update]
            @wizard.process
          end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscribe_params
      params.require(:subscribe).permit(:preference, :zip, :email, :phone, :lunch_day, :lunch_time, :dinner_day, :dinner_time, :extra_note, :first_name, :street_address, :apt, :city, :newyork, :zip, :phone_delivery, :email_delivery, :paypal, :foodgembox_price, :tax_price, :tip_price, :total_price, :coupun_code)
    end
end
