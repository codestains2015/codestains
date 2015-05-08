class ContactsController < ApplicationController

	def create
    @user = Contact.new(user_params)

    respond_to do |format|
      if @user.save
        
         ContactMailer.welcome_email(@user).deliver
         ContactMailer.query_mail(@user).deliver

        format.html { redirect_to :back }
        #flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  
     def user_params
      params.require(:contact).permit(:name, :email, :phone, :message)
    end

end
