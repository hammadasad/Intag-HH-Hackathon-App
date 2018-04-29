class PrescriptionsController < ApplicationController
    def index
        render "index"
    end

    def show
        @prescription = Prescription.where(id: params[:id]).first
        if @prescription
            msg = { :status => "ok"}
       else
            msg = { :status => "fail"}
        end
        respond_to do |format|
            format.json  { render :json => msg }
        end
    end

    def display
        @prescription = Prescription.where(id: params[:id]).first
        render "collection", :locals => { :prescription => @prescription }
    end
end
