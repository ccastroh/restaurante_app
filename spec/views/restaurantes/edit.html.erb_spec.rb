require 'spec_helper'

describe "restaurantes/edit" do
  before(:each) do
    @restaurante = assign(:restaurante, stub_model(Restaurante,
      :nombre => "MyString",
      :telefono => "MyString",
      :tipo => "MyString"
    ))
  end

  it "renders the edit restaurante form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", restaurante_path(@restaurante), "post" do
      assert_select "input#restaurante_nombre[name=?]", "restaurante[nombre]"
      assert_select "input#restaurante_telefono[name=?]", "restaurante[telefono]"
      assert_select "input#restaurante_tipo[name=?]", "restaurante[tipo]"
    end
  end
end
