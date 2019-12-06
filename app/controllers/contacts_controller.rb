class ContactsController < ApplicationController
  before_action :check_email

  def create
    if ContactMailer.with(contact_params).contact_email.deliver_later
      flash[:notice] = "Mensagem enviada com sucesso"
      redirect_to contato_path
    else
      flash[:alert] = "Algo deu errado :("
      redirect_to contato_path
    end
  end

  private

    def contact_params
      params.permit(:name, :email, :subject, :message)
    end

    def check_email
      if params[:email].empty?
        flash[:alert] = "Preencha seu endereço de e-mail corretamente"
        redirect_to contato_path
      end
    end

end
