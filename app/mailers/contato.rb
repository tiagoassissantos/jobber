# encoding: UTF-8
class Contato < ActionMailer::Base
  default :from => "contato.ekarros@gmail.com",
          :to => "tiago_stos@yahoo.com.br"
          
  
  def enviar_email(dados)
    @nome = dados[:nome]
    @email = dados[:email]
    @telefone = dados[:telefone]
    @assunto = dados[:assunto]
    @mensagem = dados[:mensagem]
    
    mail( :subject => "Imobiliária - " + @assunto )
  end
end
