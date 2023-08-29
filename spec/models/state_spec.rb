require 'rails_helper'

RSpec.describe State, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      state = State.new(symbol: "TS").save
      expect(state).to eq(false)
    end

    it 'ensures symbol presence' do
      state = State.new(name: "Test").save
      expect(state).to eq(false)
    end

    it 'should save successfully' do
      state = State.new(name: "Test", symbol: "TS").save
      expect(state).to eq(true)
    end
  end

  context 'scope tests' do
    let (:params) { {name: 'State name', symbol: 'SN'} }
    before(:each) do
      State.new(params.save).save
      State.new(params.save).save
      State.new(params.save).save
    end

    it 'should return 3 new states' do
      expect(State.where(symbol: 'SN').size).to eq(3)
    end
  end
end
