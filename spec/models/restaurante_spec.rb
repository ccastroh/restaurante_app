require 'spec_helper'

describe Restaurante do
  it 'invalido sin un nombre' do
    restaurante = Restaurante.new
    restaurante.should_not be_valid
  end

  it 'telefono es de 8 dígitos' do
    r1 = Restaurante.new(nombre:"KFC", telefono:"123")
    r1.should_not be_valid
    r2 = Restaurante.new(nombre:"KFC", telefono:"123456789")
    r2.should_not be_valid
    r3 = Restaurante.new(nombre:"KFC", telefono:"12345678")
    r3.should be_valid
  end
end
