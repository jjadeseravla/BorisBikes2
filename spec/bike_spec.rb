require 'bike'

 describe Bike do
  it 'responds to the method of working' do
    expect(subject).to respond_to :working?
  end

  describe '#report_broken' do
    # subject { Bike.new }
    # let(:docking_station) { DockingStation.new }
    it 'can be reported broken' do
      subject.report_broken
      expect(subject).to be_broken
    end
  end
end
