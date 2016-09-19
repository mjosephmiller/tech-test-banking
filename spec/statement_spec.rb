require 'account'


describe Statement do
  subject { described_class.new }

  it 'initializes with an empty history' do
    expect(subject.history).to be_empty
  end

  it 'returns a statement when requested' do
    expect(subject.print_statement).to eq([])
    expect(STDOUT).to receive(:puts).with("Date || Credit || Debit || Balance ")
    subject.print_statement
  end

end
