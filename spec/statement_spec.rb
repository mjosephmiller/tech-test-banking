require 'account'


describe Statement do

  subject { described_class.new }
  let(:account) { Account.new(subject) }

  it 'initializes with an empty history' do
    expect(subject.history).to be_empty
  end

  it 'returns a statement when requested' do
    expect(subject.print_statement).to eq([])
    expect(STDOUT).to receive(:puts).with("Date || Credit || Debit || Balance ")
    subject.print_statement
  end

  it 'increases the history as transcations in the account are made' do
    account.credit(300, subject)
    expect(subject.history).to eq([{"date"=>"2016-09-19", "credit"=>300, "debit"=>0, "balance"=>300}])
  end

end
