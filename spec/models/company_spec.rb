describe Company do
	describe "namePlusCnpj" do
		
	end
end


RSpec.describe Company, :type => :model do
  context "shows " do
    it "Name plus CNPJ" do
      name = 'Company01'
			cnpj = '69.338.960/0001-62'
			@company = Company.create(name: name, cnpj:cnpj )
			expect(@company.namePlusCnpj).to eq(cnpj+' - '+name.capitalize)
    end
  end
end