class ContactUsController < ApplicationController
  # GET /contact_us
  # GET /contact_us.json
  def index
    @contact_us = ContactUs.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_us }
    end
  end

  # GET /contact_us/1
  # GET /contact_us/1.json
  def show
    @contact_us = ContactUs.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_us }
    end
  end

  # GET /contact_us/new
  # GET /contact_us/new.json
  def new
    @contact_us = ContactUs.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_us }
    end
  end

  # GET /contact_us/1/edit
  def edit
    @contact_us = ContactUs.find(params[:id])
  end

  # POST /contact_us
  # POST /contact_us.json
  def create
    @contact_us = ContactUs.new(params[:contact_us])

    respond_to do |format|
      if @contact_us.save
        ContactUsMailer.confirm_email(params[:contact_us]).deliver

        format.html { redirect_to new_contact_u_url, notice: 'Thank you for contacting us. We will respond to your message as soon as possible.' }
        format.json { render json: @contact_us, status: :created, location: new_contact_u_url }
      else
        format.html { render action: "new" }
        format.json { render json: @contact_us.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contact_us/1
  # PUT /contact_us/1.json
  def update
    @contact_us = ContactUs.find(params[:id])

    respond_to do |format|
      if @contact_us.update_attributes(params[:contact_us])
        format.html { redirect_to @contact_us, notice: 'Contact u was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact_us.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_us/1
  # DELETE /contact_us/1.json
  def destroy
    @contact_us = ContactUs.find(params[:id])
    @contact_us.destroy

    respond_to do |format|
      format.html { redirect_to contact_us_url }
      format.json { head :no_content }
    end
  end
end
