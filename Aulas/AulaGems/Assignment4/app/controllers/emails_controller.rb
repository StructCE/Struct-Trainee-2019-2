class EmailsController < ApplicationController
    def formulario

    end

    def envio
        destinatario = params[:email]
        assunto = params[:assunto]
        body = params[:conteudo]
        EmailMailer.send_email(destinatario, assunto, body).deliver
        redirect_to forms_path, notice: "Foi enviado com sucesso"
    end
end
