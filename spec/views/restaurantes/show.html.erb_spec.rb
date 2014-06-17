require 'spec_helper'

describe "restaurantes/show" do
  before(:each) do
    @restaurante = assign(:restaurante, stub_model(Restaurante,
      :nombre => "Nombre",
      :telefono => "Telefono",
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Telefono/)
    rendered.should match(/Tipo/)
  end
end
