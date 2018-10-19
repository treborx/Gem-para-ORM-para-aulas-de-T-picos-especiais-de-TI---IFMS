RSpec.describe Tads6Robert do
  it "has a version number" do
    expect(Tads6Robert::VERSION).not_to be nil
    end

  it "Deveria mostrar as palavras Hello World" do
   x = Tads6Robert::HelloWorld.new
  expect(x.say("Iai galerinha")).to eq("Iai galerinha")
  end
end
