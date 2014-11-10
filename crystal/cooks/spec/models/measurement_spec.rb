describe "Measurement" do

  it "assigns percent to measurement" do
    meas = Measurement.create(percent: 87)
    expect(meas.percent).to eq 87
  end

 
end                                                                   
