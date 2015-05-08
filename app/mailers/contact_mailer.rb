class ContactMailer < ActionMailer::Base

  default from: "info@codestains.com"

  def welcome_email(contact)
    @user = contact
    mail(to: @user.email, subject: 'Welcome to Codestains')
  end

   def query_mail(contact)
  	@user = contact
    mail(:to => "info@codestains.com", :subject => "Getting Quote")
   end

end
