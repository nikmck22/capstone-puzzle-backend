class Api::ContactsController < ApplicationController
  def create
    @contact = Contact.new(
      name: params[:name],
      email: params[:email],
      user_id: current_user.id
    )
    if @contact.save
      render json: {message: "Your contact has been added"}, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
