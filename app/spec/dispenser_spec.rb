require_relative "../dispenser.rb"

describe Dispenser do
    let(:dispenser){ Dispenser.new }
    describe 'select_module' do
        context 'module not found' do
            it 'returns false when the module does not exist' do
                expect(dispenser.select_module "non-existent").to be false
            end
            it 'returns false when module_name is nil' do
                expect(dispenser.select_module nil).to be false
            end
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