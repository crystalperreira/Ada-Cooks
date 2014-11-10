describe "Ingredient" do

  it "assigns name to ingredient" do
    ing = Ingredient.create(name: "Noodle")
    expect(ing.name).to eq "Noodle"
  end

  it "knows measurement has ingredient" do
    ing2 = Ingredient.create(id: 11000, name: "Noodle")
    meas2 = Measurement.create(ingredient_id: 11000)
    expect(meas2.ingredient.name).to eq "Noodle"
  end

  it "assigns density to ingredient" do
    ing = Ingredient.create(density: 1.23)
    expect(ing.density).to eq 1.23
  end 
end  
                                                                         
