require_relative "../dispenser.rb"

describe Dispenser do
    let(:dispenser){ Dispenser.new }
    describe 'select_vitamin' do
        context 'vitamin not found' do
            it 'returns false when the vitamin does not exist' do
                expect(dispenser.select_vitamin "non-existent").to be false
            end
            it 'returns false when vitamin_name is nil' do
                expect(dispenser.select_vitamin nil).to be false
            end
        end
        context "vitamin exists" do
            it 'returns true' do
                expect(dispenser.select_vitamin "example").to be true
            end
            it 'sets current vitamin to the selected vitamin' do
                dispenser.select_vitamin "example"
                expect(dispenser.selected_vitamin).to eq("example")
            end
        end
    end
    describe 'exit_vitamin' do
        it 'sets the selected_vitamin to nil' do
            dispenser.select_vitamin "example"
            expect(dispenser.selected_vitamin).to eq("example")

            dispenser.exit_vitamin
            expect(dispenser.selected_vitamin)
        end
    end
end