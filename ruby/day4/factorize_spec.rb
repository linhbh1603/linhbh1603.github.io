require_relative 'factorize'

RSpec.describe 'Factorize' do
	describe 'valid number' do
		it '2' do
			@factorize = Factorize.new(2)
			expect(@factorize.factorize).to eql ([2])
		end

		it	'3' do 
			@factorize = Factorize.new(3)
			expect(@factorize.factorize).to eql ([3])
		end
		
		it	'10' do 
			@factorize = Factorize.new(10)
			expect(@factorize.factorize).to eql ([ 2, 2, 5 ])
		end

	end
end