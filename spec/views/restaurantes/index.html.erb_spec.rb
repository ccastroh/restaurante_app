require 'spec_helper'

describe "restaurantes/index" do
  before(:each) do
    assign(:restaurantes, [
      stub_model(Restaurante,
        :nombre => "Nombre",
        :telefono => "Telefono",
        :tipo => "Tipo"
      ),
      stub_model(Restaurante,
        :nombre => "Nombre",
        :telefono => "Telefono",
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of restaurantes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
