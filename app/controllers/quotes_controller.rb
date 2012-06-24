class QuotesController < ApplicationController
  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @quotes }
    end
  end

  # GET /quotes/1
  # GET /quotes/1.json
  # def show
  #   @quote = Quote.find(params[:id])

  #   respond_to do |format|
  #     format.html # show.html.erb
  #     format.json { render json: @quote }
  #   end
  # end

  # GET /quotes/new
  # GET /quotes/new.json
  def new
    @quote = Quote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @quote }
    end
  end

  # GET /quotes/1/edit
  # def edit
  #   @quote = Quote.find(params[:id])
  # end

  # POST /quotes
  # POST /quotes.json
  def create
    @quote = Quote.new(params[:quote])

    @quote.name = params[:quote][:name].titleize

    # Calculate final quote
    @quote.final_quote = set_quote = @quote.set_quote
    @quote.final_quote = set_quote+750 if params[:quote][:ground_floor].eql?('Y')
    @quote.final_quote = @quote.final_quote+750 if params[:quote][:access_difficulty].eql?('Difficult')
    @quote.final_quote = @quote.final_quote+1000 if params[:quote][:full_renovation].eql?('Y')

    respond_to do |format|
      if @quote.save
        # QuoteMailer.delay({:run_at => 1.minutes.from_now}).quote_email(@quote)
        QuoteMailer.quote_email(@quote).deliver

        format.html { redirect_to new_quote_url, notice: 'Thank you for submitting your details. You will receive an email shortly with the quote.' }
        format.json { render json: @quote, status: :created, location: @quote }
      else
        format.html { render action: "new" }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /quotes/1
  # PUT /quotes/1.json
  # def update
  #   @quote = Quote.find(params[:id])

  #   respond_to do |format|
  #     if @quote.update_attributes(params[:quote])
  #       format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @quote.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  # def destroy
  #   @quote = Quote.find(params[:id])
  #   @quote.destroy

  #   respond_to do |format|
  #     format.html { redirect_to quotes_url }
  #     format.json { head :no_content }
  #   end
  # end
end