class EmailMailer < ApplicationMailer
    def send_email(destinario, assunto, corpo)
        @body = corpo
        mail(to: destinario, subject: assunto)
    end
end
