class ContactMailer < ActionMailer::Base

  default from: "codestains2015@gmail.com"

  def welcome_email(contact)
    @user = contact
    mail(to: @user.email, subject: 'Welcome to Codestains')
  end

   def query_mail(contact)
  	@user = contact
    mail(:to => "codestains2015@gmail.com", :subject => "Getting Quote")
   end

end
