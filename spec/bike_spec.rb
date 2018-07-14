require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'checks whether bike is working' do
    expect(subject).to be_working
  end
end
