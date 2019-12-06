class ContactMailer < ApplicationMailer
  def contact_email
    @message = params[:message]   
    mail(from: params[:email], to: 'tvcortezi@gmail.com', subject: params[:subject])
  end
end
