require_relative "../dispenser.rb"

describe Dispenser do
    let(:dispenser){ Dispenser.new }
    describe 'select_module' do
        it 'returns false when the module does not exist' do
            expect(dispenser.select_module "non-existent").to be false
        end
        context "module exists" do
            it 'returns true' do
                expect(dispenser.select_module "example").to be true
            end
            it 'sets current module to the selected module' do
                dispenser.select_module "example"
                expect(dispenser.selected_module).to eq("example")
            end
        end
    end
end