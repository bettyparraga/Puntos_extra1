class Prestamo < ActiveRecord::Base

  belongs_to :cliente
  belongs_to :libro
  validates_presence_of :libro_id, :cliente_id, :fi_prestamo, :ff_prestamo
  Twitter.configure do |config|
    config.consumer_key = 'NRrp18T2uwPcHG8kKfssw' 
    config.consumer_secret = 'jbWwS2Ekvaqo8OGksNAt3inwc7ZpnDFNnavt6UQ'
    config.oauth_token = '860540329-6mXBiBxiIOhtILFMYodhftVaREUqfoF3hl89Upbp'
    config.oauth_token_secret = 'pDqtWP3BnTIycKfMdKtTWAnvV8ozlpf6Xvom0d0hQ'
  end

  def enviar_mensaje( prestamo )
    client = Twitter::Client.new
    client.update("Ya "+prestamo.cliente.dirtwitter+", devuelveme mi libro "+prestamo.libro.titulo)
    #client.update('Ya '+prestamo.cliente.dirtwitter + ', devuélveme mi libro ' + prestamo.libro.titulo)
    #client.update('Devuelveme mi libro')
  end

end
