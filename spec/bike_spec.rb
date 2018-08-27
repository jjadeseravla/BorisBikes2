require 'bike'

describe Bike do
  it 'responds to the method of working' do
    expect(subject).to respond_to :working?
  end
end
