require 'spec_helper'

describe "restaurantes/new" do
  before(:each) do
    assign(:restaurante, stub_model(Restaurante,
      :nombre => "MyString",
      :telefono => "MyString",
      :tipo => "MyString"
    ).as_new_record)
  end

  it "renders new restaurante form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", restaurantes_path, "post" do
      assert_select "input#restaurante_nombre[name=?]", "restaurante[nombre]"
      assert_select "input#restaurante_telefono[name=?]", "restaurante[telefono]"
      assert_select "input#restaurante_tipo[name=?]", "restaurante[tipo]"
    end
  end
end
