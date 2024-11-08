class MembersController < ApplicationController
    def index
      members = Member.all
      render json: members
    end
  
    def show
      member = Member.find(params[:id])
      render json: member
    end
  
    def create
      member = Member.new(member_params)
      if member.save
        render json: member, status: :created
      else
        render json: member.errors, status: :unprocessable_entity
      end
    end
  
    def update
      member = Member.find(params[:id])
      if member.update(member_params)
        render json: member
      else
        render json: member.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      member = Member.find(params[:id])
      member.destroy
      head :no_content
    end
  
    private
  
    def member_params
      params.require(:member).permit(:name, :membership_id, :contact_info, :membership_status)
    end
  end
  